DROP TABLE IF EXISTS `AssignmentSummary_LOAD`;

CREATE TABLE `AssignmentSummary_LOAD` (
  `DropboxId` BIGINT NOT NULL,
  `OrgUnitId` INT DEFAULT NULL,
  `Name` VARCHAR(128) DEFAULT NULL,
  `Category` VARCHAR(128) DEFAULT NULL,
  `Type` VARCHAR(10) DEFAULT NULL,
  `GradeItemId` BIGINT DEFAULT NULL,
  `PossibleScore` DECIMAL(19, 9) DEFAULT NULL,
  `StartDate` DATETIME DEFAULT NULL,
  `EndDate` DATETIME DEFAULT NULL,
  `DueDate` DATETIME DEFAULT NULL,
  `IsRestricted` TINYINT DEFAULT NULL,
  `IsDeleted` TINYINT DEFAULT NULL,
  `TurnItInEnabled` TINYINT DEFAULT NULL,
  `IsHidden` TINYINT DEFAULT NULL,
  `SortOrder` INT DEFAULT NULL,
  `SubmissionType` VARCHAR(18) DEFAULT NULL,
  `CompletionType` VARCHAR(27) DEFAULT NULL,
  `ResultId` INT DEFAULT NULL,
  `CategoryId` BIGINT DEFAULT NULL,
  `Version` BIGINT DEFAULT NULL,
  `StartDateAvailabilityType` SMALLINT DEFAULT NULL,
  `EndDateAvailabilityType` SMALLINT DEFAULT NULL,
  `AIUtilization` INT DEFAULT NULL,
  UNIQUE KEY (`DropboxId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
