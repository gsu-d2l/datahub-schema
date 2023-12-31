DROP TABLE IF EXISTS `ChatObject`;

CREATE TABLE `ChatObject` (
  `ChatId` BIGINT NOT NULL,
  `OrgUnitId` INT DEFAULT NULL,
  `ChatType` VARCHAR(128) DEFAULT NULL,
  `Name` VARCHAR(150) DEFAULT NULL,
  `Description` VARCHAR(1000) DEFAULT NULL,
  `CreatorUserId` INT DEFAULT NULL,
  `LastModified` DATETIME DEFAULT NULL,
  UNIQUE KEY (`ChatId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
