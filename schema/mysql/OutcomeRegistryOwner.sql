DROP TABLE IF EXISTS `OutcomeRegistryOwner`;

CREATE TABLE `OutcomeRegistryOwner` (
  `OwnerType` INT NOT NULL,
  `OwnerId` VARCHAR(255) NOT NULL,
  `RegistryId` VARCHAR(36) NOT NULL,
  `CreatedDate` DATETIME DEFAULT NULL,
  `CreatedBy` INT DEFAULT NULL,
  `LastModifiedDate` DATETIME DEFAULT NULL,
  `LastModifiedBy` INT DEFAULT NULL,
  `IsDeleted` TINYINT DEFAULT NULL,
  UNIQUE KEY (`OwnerType`, `OwnerId`, `RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
