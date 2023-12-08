<?php

declare(strict_types=1);

namespace GSU\D2L\DataHub\Schema\Model;

enum DatasetSchemaType: string
{
    case ADS = "ADS";
    case BDS = "BDS";


    /**
     * @param string|self $value
     * @return self
     */
    public static function getType(string|self $value): self
    {
        return $value instanceof self ? $value : self::from(strtoupper($value));
    }
}
