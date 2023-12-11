<?php

declare(strict_types=1);

namespace GSU\D2L\DataHub\Schema;

use GSU\D2L\DataHub\Schema\Model\DatasetSchema;
use GSU\D2L\DataHub\Schema\Model\DatasetSchemaType;
use mjfklib\Utils\ArrayValue;
use mjfklib\Utils\FileMethods;
use mjfklib\Utils\JSON;

class SchemaRepository
{
    private string $schemaDir;

    /** @var array<string,string> $schemaMap */
    private array $schemaMap;


    /**
     * @param string $schemaDir
     */
    public function __construct(string $schemaDir = __DIR__ . '/../schema')
    {
        $this->schemaDir = $this->initSchemaDir($schemaDir);
        $this->schemaMap = $this->initSchemaMap($this->schemaDir);
    }


    /**
     * @param string $schemaDir
     * @return string
     */
    protected function initSchemaDir(string $schemaDir): string
    {
        $schemaDir = realpath($schemaDir);
        if (!is_string($schemaDir) || !is_dir($schemaDir) || !is_dir("{$schemaDir}/datasets")) {
            throw new \RuntimeException("Invalid schema directory");
        }
        return $schemaDir;
    }


    /**
     * @param string $schemaDir
     * @return array<string,string>
     */
    protected function initSchemaMap(string $schemaDir): array
    {
        return ArrayValue::convertToStringArray(
            JSON::decodeArray(
                FileMethods::getContents(
                    "{$schemaDir}/schema_map.json"
                )
            )
        );
    }


    /**
     * @return string
     */
    public function getSchemaDir(): string
    {
        return $this->schemaDir;
    }


    /**
     * @return string
     */
    public function getDatasetsDir(): string
    {
        return $this->getSchemaDir() . '/datasets';
    }


    /**
     * @param string|DatasetSchemaType $type
     * @param string $name
     * @return DatasetSchema
     */
    public function fetch(
        string|DatasetSchemaType $type,
        string $name
    ): DatasetSchema {
        $name = $this->schemaMap[$name] ?? $name;

        try {
            return DatasetSchema::create(
                $this->readFile(
                    $this->getPath(
                        DatasetSchemaType::getType($type),
                        DatasetSchema::getName($name)
                    )
                )
            );
        } catch (\Throwable $t) {
            $type = $type instanceof DatasetSchemaType ? $type->value : $type;
            throw new \RuntimeException(
                message: "Error fetching schema: {$type}.{$name}",
                previous: $t
            );
        }
    }


    /**
     * @param DatasetSchema $dataset
     * @return void
     */
    public function store(DatasetSchema $dataset): void
    {
        $dataset->name = $this->schemaMap[$dataset->name] ?? $dataset->name;

        try {
            $this->writeFile(
                $this->getPath(
                    $dataset->type,
                    $dataset->getSimpleName()
                ),
                $dataset
            );
        } catch (\Throwable $t) {
            throw new \RuntimeException(
                message: "Error storing schema: {$dataset->type->value}.{$dataset->getSimpleName()}",
                previous: $t
            );
        }
    }


    /**
     * @param DatasetSchemaType $type
     * @param string $name
     * @return string
     */
    protected function getPath(
        DatasetSchemaType $type,
        string $name
    ): string {
        return "{$this->getDatasetsDir()}/{$type->value}_{$name}.json";
    }


    /**
     * @param string $path
     * @return mixed[]
     */
    protected function readFile(string $path): array
    {
        return JSON::decodeArray(FileMethods::getContents($path));
    }


    /**
     * @param string $path
     * @param DatasetSchema $dataset
     * @return void
     */
    protected function writeFile(
        string $path,
        DatasetSchema $dataset
    ): void {
        FileMethods::putContents(
            $path,
            JSON::encode($dataset, 512, JSON_PRETTY_PRINT)
        );
    }
}
