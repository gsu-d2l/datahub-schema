DROP TABLE IF EXISTS `PortfolioCategory_LOAD`;

CREATE TABLE `PortfolioCategory_LOAD` (
  `CategoryId` VARCHAR(36) NOT NULL,
  `OrgUnitId` INT DEFAULT NULL,
  `Name` VARCHAR(256) DEFAULT NULL,
  `IsRetired` TINYINT DEFAULT NULL,
  `IsDeleted` TINYINT DEFAULT NULL,
  `LastModified` DATETIME DEFAULT NULL,
  `LastModifiedBy` INT DEFAULT NULL,
  UNIQUE KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
