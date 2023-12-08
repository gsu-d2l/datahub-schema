DROP TABLE IF EXISTS `SCORMVisit_LOAD`;

CREATE TABLE `SCORMVisit_LOAD` (
  `VisitId` VARCHAR(36) NOT NULL,
  `ScormObjectId` VARCHAR(36) DEFAULT NULL,
  `UserId` INT DEFAULT NULL,
  `OrgUnitId` INT DEFAULT NULL,
  `FirstAccessDate` DATETIME DEFAULT NULL,
  `LastAccessDate` DATETIME DEFAULT NULL,
  `CompletedDate` DATETIME DEFAULT NULL,
  `Completion` VARCHAR(100) DEFAULT NULL,
  `Success` VARCHAR(100) DEFAULT NULL,
  `Score` FLOAT DEFAULT NULL,
  `TimeSpent` INT DEFAULT NULL,
  `Progress` FLOAT DEFAULT NULL,
  `LastModified` DATETIME DEFAULT NULL,
  UNIQUE KEY (`VisitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
