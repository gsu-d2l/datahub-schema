DROP TABLE IF EXISTS `QuizUserAnswer_LOAD`;

CREATE TABLE `QuizUserAnswer_LOAD` (
  `AttemptId` BIGINT NOT NULL,
  `QuestionId` BIGINT DEFAULT NULL,
  `QuestionVersionId` BIGINT DEFAULT NULL,
  `TimeCompleted` DATETIME DEFAULT NULL,
  `QuestionNumber` INT DEFAULT NULL,
  `Comment` VARCHAR(1000) DEFAULT NULL,
  `SortOrder` INT DEFAULT NULL,
  `Score` DECIMAL(19, 9) DEFAULT NULL,
  `Page` INT DEFAULT NULL,
  `SectionId` BIGINT DEFAULT NULL,
  `ObjectId` BIGINT NOT NULL,
  `OutOf` DECIMAL(19, 9) DEFAULT NULL,
  `TimeStarted` DATETIME DEFAULT NULL,
  `IsBonus` TINYINT DEFAULT NULL,
  `IsDeleted` TINYINT DEFAULT NULL,
  `LastModified` DATETIME DEFAULT NULL,
  `LastModifiedBy` INT DEFAULT NULL,
  `QuizTimeCompleted` DATETIME DEFAULT NULL,
  UNIQUE KEY (`AttemptId`, `ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
