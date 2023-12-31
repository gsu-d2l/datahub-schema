DROP TABLE IF EXISTS `RubricObject`;

CREATE TABLE `RubricObject` (
  `RubricId` BIGINT NOT NULL,
  `Name` VARCHAR(256) DEFAULT NULL,
  `RubricStatus` VARCHAR(256) DEFAULT NULL,
  `Description` VARCHAR(1000) DEFAULT NULL,
  `RubricType` VARCHAR(256) DEFAULT NULL,
  `ScoringMethods` VARCHAR(256) DEFAULT NULL,
  `IsScoreVisible` TINYINT DEFAULT NULL,
  `OrgUnitID` INT DEFAULT NULL,
  `IsShared` TINYINT DEFAULT NULL,
  `IsDeleted` TINYINT DEFAULT NULL,
  UNIQUE KEY (`RubricId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
