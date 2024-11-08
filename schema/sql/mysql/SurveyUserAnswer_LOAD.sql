DROP TABLE IF EXISTS `SurveyUserAnswer_LOAD`;

CREATE TABLE `SurveyUserAnswer_LOAD` (
  `AttemptId` BIGINT NOT NULL,
  `QuestionId` BIGINT NOT NULL,
  `QuestionVersionId` BIGINT DEFAULT NULL,
  `TimeCompleted` DATETIME DEFAULT NULL,
  `QuestionNumber` INT DEFAULT NULL,
  `Comment` VARCHAR(1000) DEFAULT NULL,
  `SortOrder` INT DEFAULT NULL,
  `Score` DECIMAL(19, 9) DEFAULT NULL,
  `Page` INT DEFAULT NULL,
  `Assigned` TINYINT DEFAULT NULL,
  `IsDeleted` TINYINT DEFAULT NULL,
  `LastModified` DATETIME DEFAULT NULL,
  `LastModifiedBy` INT DEFAULT NULL,
  `SurveyTimeCompleted` DATETIME DEFAULT NULL,
  UNIQUE KEY (`AttemptId`, `QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
