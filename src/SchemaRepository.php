<?php

declare(strict_types=1);

namespace GSU\D2L\DataHub\Schema;

use GSU\D2L\DataHub\Schema\Model\ColumnSchema;
use GSU\D2L\DataHub\Schema\Model\DatasetModule;
use GSU\D2L\DataHub\Schema\Model\DatasetSchema;
use GSU\D2L\DataHub\Schema\Model\DatasetSchemaType;
use GSU\D2L\DataHub\Schema\Model\SQLType;
use mjfklib\Utils\ArrayValue;
use mjfklib\Utils\FileMethods;
use mjfklib\Utils\JSON;

final class SchemaRepository implements SchemaRepositoryInterface
{
    private string $modulesDir;
    private string $datasetsDir;
    private string $sqlTablesDir;

    /** @var array<int,string> $moduleMap */
    private array $moduleMap;

    /** @var array<string,string> $datasetMap */
    private array $datasetMap;

    /** @var array<string,string> $simpleDatasetMap */
    private array $simpleDatasetMap;

    /** @var array<string,array<string,string>> $sqlTableMap */
    private array $sqlTableMap = [];


    /**
     * @param string|null $modulesDir
     * @param string|null $datasetsDir
     * @param string|null $sqlTablesDir
     */
    public function __construct(
        string|null $modulesDir = null,
        string|null $datasetsDir = null,
        string|null $sqlTablesDir = null
    ) {
        $this->modulesDir = FileMethods::getDirPath($modulesDir ?? __DIR__ . '/../schema/modules');
        $this->datasetsDir = FileMethods::getDirPath($datasetsDir ?? __DIR__ . '/../schema/datasets');
        $this->sqlTablesDir = FileMethods::getDirPath($sqlTablesDir ?? __DIR__ . '/../schema/sql');

        $this->moduleMap = array_values(FileMethods::getFiles($this->modulesDir, "json"));
        $this->datasetMap = ArrayValue::convertToStringArray(
            JSON::decodeArray(
                FileMethods::getContents(
                    "{$this->datasetsDir}/dataset_map.json"
                )
            )
        );

        $this->simpleDatasetMap = array_column(
            array_map(
                fn(string $v, string $k) => [DatasetSchema::getName($v), DatasetSchema::getName($k)],
                array_values($this->datasetMap),
                array_keys($this->datasetMap)
            ),
            0,
            1
        );

        foreach (SQLType::cases() as $sqlType) {
            $this->sqlTableMap[$sqlType->value] = ArrayValue::convertToStringArray(
                JSON::decodeArray(
                    FileMethods::getContents(
                        $this->getSqlTableDir($sqlType) . "/table_map.json"
                    )
                )
            );
        }
    }


    /**
     * @inheritdoc
     */
    public function listModules(): array
    {
        return $this->moduleMap;
    }


    /**
     * @inheritdoc
     */
    public function existsModule(string $moduleName): bool
    {
        return is_file($this->getModulePath($moduleName));
    }


    /**
     * @inheritdoc
     */
    public function fetchModule(string $moduleName): DatasetModule
    {
        return DatasetModule::create([
            ...JSON::decodeArray(FileMethods::getContents($this->getModulePath($moduleName))),
            'contentsPath' => "{$this->modulesDir}/{$moduleName}.html"
        ]);
    }


    /**
     * @inheritdoc
     */
    public function cleanUpModules(): void
    {
        FileMethods::deleteFiles("{$this->modulesDir}/*.html");
    }


    /**
     * @inheritdoc
     */
    public function listDatasets(): array
    {
        return $this->datasetMap;
    }


    /**
     * @inheritdoc
     */
    public function existsDataset(
        string|DatasetSchemaType $datasetType,
        string $datasetName
    ): bool {
        $datasetName = $this->getDatasetName($datasetName);
        return is_string($datasetName) && is_file($this->getDatasetPath(
            DatasetSchemaType::getType($datasetType),
            DatasetSchema::getName($datasetName)
        ));
    }


    /**
     * @inheritdoc
     */
    public function fetchDataset(
        string|DatasetSchemaType $datasetType,
        string $datasetName
    ): DatasetSchema {
        $datasetName = $this->getDatasetName($datasetName)
            ?? throw new \RuntimeException("Unknown schema: {$datasetName}");

        $datasetPath = $this->getDatasetPath(
            DatasetSchemaType::getType($datasetType),
            DatasetSchema::getName($datasetName)
        );

        if (!is_file($datasetPath)) {
            throw new \RuntimeException("Schema not found: {$datasetName}",);
        }

        $overridePath = $this->getDatasetPath(
            DatasetSchemaType::getType($datasetType),
            DatasetSchema::getName($datasetName) . '.override'
        );

        try {
            if (!is_file($overridePath)) {
                return DatasetSchema::create($datasetPath);
            }

            $base = ArrayValue::convertToArray($datasetPath);
            $baseColumns = array_column(
                array_map(
                    fn ($col) => is_array($col)
                        ? ColumnSchema::create($col)
                        : throw new \RuntimeException(),
                    ArrayValue::getArray($base, 'columns')
                ),
                null,
                'name'
            );

            $override = ArrayValue::convertToArray($overridePath);
            $overrideColumns = array_column(
                array_map(
                    fn ($col) => is_array($col)
                        ? ColumnSchema::create($col)
                        : throw new \RuntimeException(),
                    ArrayValue::getArray($override, 'columns')
                ),
                null,
                'name'
            );

            $columns = [];
            foreach (array_keys($baseColumns) as $name) {
                if (isset($overrideColumns[$name])) {
                    $baseColumns[$name] = $overrideColumns[$name];
                }
            }
            foreach (array_keys($overrideColumns) as $name) {
                if (!isset($baseColumns[$name])) {
                    $baseColumns[$name] = $overrideColumns[$name];
                }
            }

            $base['columns'] = array_values($baseColumns);

            return DatasetSchema::create($base);
        } catch (\Throwable $t) {
            $datasetType = $datasetType instanceof DatasetSchemaType ? $datasetType->value : $datasetType;
            throw new \RuntimeException(
                message: "Error fetching schema: {$datasetType}.{$datasetName}",
                previous: $t
            );
        }
    }


    /**
     * @inheritdoc
     */
    public function storeDataset(DatasetSchema $dataset): void
    {
        try {
            $dataset->name = $this->getDatasetName($dataset->name)
                ?? throw new \RuntimeException("Dataset name not found in map: {$dataset->name}");

            FileMethods::putContents(
                $this->getDatasetPath(
                    DatasetSchemaType::getType($dataset->type),
                    $dataset->getSimpleName()
                ),
                JSON::encode($dataset)
            );
        } catch (\Throwable $t) {
            throw new \RuntimeException(
                message: "Error storing schema: {$dataset->type->value}.{$dataset->getSimpleName()}",
                previous: $t
            );
        }
    }


    /**
     * @inheritdoc
     */
    public function cleanUpDatasets(): void
    {
        foreach (DatasetSchemaType::cases() as $type) {
            FileMethods::deleteFiles("{$this->datasetsDir}/{$type->value}_.json");
        }
    }


    /**
     * @inheritdoc
     */
    public function listSqlTables(SQLType $sqlType): array
    {
        return $this->sqlTableMap[$sqlType->value]
            ?? throw new \RuntimeException("Type not found: {$sqlType->value}");
    }


    /**
     * @inheritdoc
     */
    public function existsSqlTable(
        SQLType $sqlType,
        DatasetSchema $datasetSchema
    ): bool {
        return isset($this->sqlTableMap[$sqlType->value][$datasetSchema->name]);
    }


    /**
     * @inheritdoc
     */
    public function fetchSqlTableName(
        SQLType $sqlType,
        DatasetSchema $datasetSchema
    ): string {
        return $this->sqlTableMap[$sqlType->value][$datasetSchema->name]
            ?? throw new \RuntimeException("Dataset not found: {$datasetSchema->name}, {$sqlType->value}");
    }


    /**
     * @inheritdoc
     */
    public function fetchSqlTablePath(
        SQLType $sqlType,
        DatasetSchema $datasetSchema,
        string $suffix = ''
    ): string {
        $tableName = $this->fetchSqlTableName($sqlType, $datasetSchema);
        return $this->getSqlTableDir($sqlType) . "/{$tableName}{$suffix}.sql";
    }


    /**
     * @inheritdoc
     */
    public function cleanUpSqlTables(SQLType $sqlType): void
    {
        FileMethods::deleteFiles($this->getSqlTableDir($sqlType) . "/*.sql");
    }


    /**
     * @param string $moduleName
     * @return string
     */
    private function getModulePath(string $moduleName): string
    {
        return "{$this->modulesDir}/{$moduleName}.json";
    }


    /**
     * @param DatasetSchemaType $datasetType
     * @param string $datasetName
     * @return string
     */
    private function getDatasetPath(
        DatasetSchemaType $datasetType,
        string $datasetName
    ): string {
        return "{$this->datasetsDir}/{$datasetType->value}_{$datasetName}.json";
    }


    /**
     * @param string $datasetName
     * @return string|null
     */
    private function getDatasetName(string $datasetName): string|null
    {
        return match (true) {
            isset($this->datasetMap[$datasetName])                => $this->datasetMap[$datasetName],
            isset($this->simpleDatasetMap[$datasetName])          => $this->simpleDatasetMap[$datasetName],
            in_array($datasetName, $this->datasetMap, true)       => $datasetName,
            in_array($datasetName, $this->simpleDatasetMap, true) => $datasetName,
            default                                               => null
        };
    }


    /**
     * @param SQLType $sqlType
     * @return string
     */
    private function getSqlTableDir(SQLType $sqlType): string
    {
        return "{$this->sqlTablesDir}/{$sqlType->value}";
    }
}
