DROP TABLE IF EXISTS `LTILinkMigrationAudit`;

CREATE TABLE `LTILinkMigrationAudit` (
  `LTIMigrationId` VARCHAR(36) NOT NULL,
  `UserId` BIGINT DEFAULT NULL,
  `MigrationDate` DATETIME DEFAULT NULL,
  `OrgUnitId` BIGINT DEFAULT NULL,
  `LinkId` BIGINT DEFAULT NULL,
  `LinkURL` VARCHAR(2000) DEFAULT NULL,
  `LinkName` VARCHAR(200) DEFAULT NULL,
  `ClientId` VARCHAR(255) DEFAULT NULL,
  `RegistrationDomain` VARCHAR(2083) DEFAULT NULL,
  `DeploymentId` VARCHAR(36) DEFAULT NULL,
  `JobId` BIGINT DEFAULT NULL,
  `Status` SMALLINT DEFAULT NULL,
  `FailureCode` SMALLINT DEFAULT NULL,
  `MigrationType` SMALLINT DEFAULT NULL,
  `LegacyURL` VARCHAR(2083) DEFAULT NULL,
  UNIQUE KEY (`LTIMigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
