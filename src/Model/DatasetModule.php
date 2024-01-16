<?php

declare(strict_types=1);

namespace GSU\D2L\DataHub\Schema\Model;

use GSU\D2L\DataHub\Schema\Model\DatasetSchemaType;
use mjfklib\Utils\ArrayValue;

final class DatasetModule implements \JsonSerializable
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
            datasets: ArrayValue::getStringArray($values, 'datasets'),
            contentsPath: ArrayValue::getString($values, 'contentsPath'),
        );
    }


    /**
     * @param string $name
     * @return string
     */
    public static function getName(string $name): string
    {
        return str_replace(' ', '_', strtoupper($name));
    }


    /**
     * @param DatasetSchemaType $type
     * @param string $name
     * @param string $url
     * @param string[] $datasets
     * @param string $contentsPath
     */
    public function __construct(
        public DatasetSchemaType $type,
        public string $name,
        public string $url,
        public array $datasets,
        public string $contentsPath
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
     * @return mixed
     */
    public function jsonSerialize(): mixed
    {
        return [
            'type' => $this->type->value,
            'name' => $this->name,
            'url' => $this->url,
            'datasets' => $this->datasets,
        ];
    }
}
