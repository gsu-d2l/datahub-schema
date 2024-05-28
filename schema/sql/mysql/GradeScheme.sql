DROP TABLE IF EXISTS `GradeScheme`;

CREATE TABLE `GradeScheme` (
  `GradeSchemeId` BIGINT NOT NULL,
  `OrgUnitId` INT DEFAULT NULL,
  `SchemeName` VARCHAR(128) DEFAULT NULL,
  `DeletedDate` DATETIME DEFAULT NULL,
  `Version` BIGINT DEFAULT NULL,
  UNIQUE KEY (`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
