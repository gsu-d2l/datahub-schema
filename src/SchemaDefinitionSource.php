<?php

declare(strict_types=1);

namespace GSU\D2L\DataHub\Schema;

use mjfklib\Container\DefinitionSource;
use mjfklib\Container\Env;

final class SchemaDefinitionSource extends DefinitionSource
{
    /**
     * @inheritdoc
     */
    protected function createDefinitions(Env $env): array
    {
        return [
            SchemaRepositoryInterface::class => static::factory(function () use ($env) {
                return new SchemaRepository(
                    isset($env['DATASETS_DIR']) ? $env['DATASETS_DIR'] : null,
                    isset($env['MODULES_DIR']) ? $env['MODULES_DIR'] : null,
                    isset($env['SQL_TABLES_DIR']) ? $env['SQL_TABLES_DIR'] : null,
                );
            })
        ];
    }
}
