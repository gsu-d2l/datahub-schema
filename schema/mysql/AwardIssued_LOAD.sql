DROP TABLE IF EXISTS `AwardIssued_LOAD`;

CREATE TABLE `AwardIssued_LOAD` (
  `AwardId` BIGINT DEFAULT NULL,
  `OrgUnitId` BIGINT DEFAULT NULL,
  `UserId` BIGINT DEFAULT NULL,
  `Type` VARCHAR(128) DEFAULT NULL,
  `IssuedBy` INT DEFAULT NULL,
  `IssueDate` DATETIME DEFAULT NULL,
  `ExpiryDate` DATETIME DEFAULT NULL,
  `IsRevoked` INT DEFAULT NULL,
  `IssuedId` BIGINT NOT NULL,
  `Credits` DECIMAL(9, 2) DEFAULT NULL,
  `Criteria` VARCHAR(1000) DEFAULT NULL,
  `Evidence` VARCHAR(1000) DEFAULT NULL,
  `RevokedDate` DATETIME DEFAULT NULL,
  `RevokedReason` VARCHAR(1000) DEFAULT NULL,
  `RevokedBy` BIGINT DEFAULT NULL,
  `LastModifiedBy` BIGINT DEFAULT NULL,
  `LastModifiedDate` DATETIME DEFAULT NULL,
  `Version` BIGINT DEFAULT NULL,
  UNIQUE KEY (`IssuedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
