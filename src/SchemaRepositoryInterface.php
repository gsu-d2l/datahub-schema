<?php

declare(strict_types=1);

namespace GSU\D2L\DataHub\Schema;

use GSU\D2L\DataHub\Schema\Model\DatasetModule;
use GSU\D2L\DataHub\Schema\Model\DatasetSchema;
use GSU\D2L\DataHub\Schema\Model\DatasetSchemaType;
use GSU\D2L\DataHub\Schema\Model\SQLType;

interface SchemaRepositoryInterface
{
    /**
     * @return string[]
     */
    public function listModules(): array;


    /**
     * @param string $moduleName
     * @return bool
     */
    public function existsModule(string $moduleName): bool;


    /**
     * @param string $moduleName
     * @return DatasetModule
     */
    public function fetchModule(string $moduleName): DatasetModule;


    /**
     * @return void
     */
    public function cleanUpModules(): void;


    /**
     * @return string[]
     */
    public function listDatasets(): array;


    /**
     * @param string|DatasetSchemaType $datasetType
     * @param string $datasetName
     * @return bool
     */
    public function existsDataset(
        string|DatasetSchemaType $datasetType,
        string $datasetName
    ): bool;


    /**
     * @param string|DatasetSchemaType $datasetType
     * @param string $datasetName
     * @return DatasetSchema
     */
    public function fetchDataset(
        string|DatasetSchemaType $datasetType,
        string $datasetName
    ): DatasetSchema;


    /**
     * @param DatasetSchema $dataset
     * @return void
     */
    public function storeDataset(DatasetSchema $dataset): void;


    /**
     * @return void
     */
    public function cleanUpDatasets(): void;


    /**
     * @param SQLType $sqlType
     * @return array<string,string>
     */
    public function listSqlTables(SQLType $sqlType): array;


    /**
     * @param SQLType $sqlType
     * @param DatasetSchema $datasetSchema
     * @return bool
     */
    public function existsSqlTable(
        SQLType $sqlType,
        DatasetSchema $datasetSchema
    ): bool;


    /**
     * @param SQLType $sqlType
     * @param DatasetSchema $datasetSchema
     * @return string
     */
    public function fetchSqlTableName(
        SQLType $sqlType,
        DatasetSchema $datasetSchema
    ): string;


    /**
     * @param SQLType $sqlType
     * @param DatasetSchema $datasetSchema
     * @param string $suffix
     * @return string
     */
    public function fetchSqlTablePath(
        SQLType $sqlType,
        DatasetSchema $datasetSchema,
        string $suffix = ''
    ): string;

    /**
     * @param SQLType $sqlType
     * @return void
     */
    public function cleanUpSqlTables(SQLType $sqlType): void;
}
