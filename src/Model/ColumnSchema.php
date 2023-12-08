<?php

declare(strict_types=1);

namespace GSU\D2L\DataHub\Schema\Model;

use mjfklib\Container\ArrayValue;

class ColumnSchema
{
    /**
     * @param mixed[] $values
     * @return self
     */
    public static function create(array $values): self
    {
        $description = ArrayValue::getStringNull($values, 'description') ?? '';
        $key = strtoupper(ArrayValue::getStringNull($values, 'key') ?? '');

        return new self(
            name: ArrayValue::getString($values, 'name'),
            description: $description,
            type: ColumnSchemaType::getType(ArrayValue::getStringNull($values, 'type') ?? ColumnSchemaType::VARCHAR),
            size: ArrayValue::getStringNull($values, 'size') ?? '',
            isPrimary: ArrayValue::getBoolNull($values, 'isPrimary') ?? str_contains($key, 'PK'),
            isForeign: ArrayValue::getBoolNull($values, 'isForeign') ?? str_contains($key, 'FK'),
            canBeNull: ArrayValue::getBoolNull($values, 'canBeNull')
                ?? str_contains(strtolower($description), 'field can be null'),
            versionHistory: ArrayValue::getStringNull($values, 'versionHistory') ?? ''
        );
    }


    /**
     * @param string $name
     * @param string $description
     * @param ColumnSchemaType $type
     * @param string $size
     * @param bool $isPrimary
     * @param bool $isForeign
     * @param bool $canBeNull
     * @param string $versionHistory
     */
    public function __construct(
        public string $name,
        public string $description,
        public ColumnSchemaType $type,
        public string $size,
        public bool $isPrimary,
        public bool $isForeign,
        public bool $canBeNull,
        public string $versionHistory,
    ) {
    }
}