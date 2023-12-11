<?php

declare(strict_types=1);

namespace GSU\D2L\DataHub\Schema\Model;

use mjfklib\Utils\ArrayValue;

class DatasetSchema
{
    /**
     * @param mixed $values
     * @return self
     */
    public static function create(mixed $values): self
    {
        $values = ArrayValue::convertToArray($values);
        return new self(
            type: DatasetSchemaType::getType(ArrayValue::getStringNull($values, 'type') ?? DatasetSchemaType::BDS),
            name: ArrayValue::getString($values, 'name'),
            url: ArrayValue::getString($values, 'url'),
            description: ArrayValue::getString($values, 'description'),
            columns: array_values(array_map(
                fn($col) => is_array($col) ? ColumnSchema::create($col) : throw new \RuntimeException(),
                ArrayValue::getArray($values, 'columns')
            ))
        );
    }


    /**
     * @return string
     */
    public static function getName(string $name): string
    {
        return preg_replace('/[^a-zA-Z]+/', '', $name) ?? $name;
    }


    /**
     * @param DatasetSchemaType $type
     * @param string $name
     * @param string $url
     * @param string $description
     * @param ColumnSchema[] $columns
     */
    public function __construct(
        public DatasetSchemaType $type,
        public string $name,
        public string $url,
        public string $description,
        public array $columns
    ) {
    }


    /**
     * @return string
     */
    public function getSimpleName(): string
    {
        return self::getName($this->name);
    }


    /**
     * @return ColumnSchema[]
     */
    public function getPrimaryColumns(): array
    {
        return array_values(array_filter(
            $this->columns,
            fn (ColumnSchema $c): bool => $c->isPrimary
        ));
    }


    /**
     * @param (string|ColumnSchema)[] $selected
     * @return ColumnSchema[]
     */
    public function getSelectedColumns(array $selected): array
    {
        /** @var string[] $columns */
        $columns = array_values(array_map(
            fn(string|ColumnSchema $c): string => match (true) {
                $c instanceof ColumnSchema => $c->name,
                default => $c
            },
            $selected
        ));

        return array_values(array_filter(
            $this->columns,
            fn (ColumnSchema $c): bool => in_array($c->name, $columns, true)
        ));
    }
}
