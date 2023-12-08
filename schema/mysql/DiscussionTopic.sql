DROP TABLE IF EXISTS `DiscussionTopic`;

CREATE TABLE `DiscussionTopic` (
  `OrgUnitId` INT DEFAULT NULL,
  `TopicId` BIGINT NOT NULL,
  `ForumId` BIGINT DEFAULT NULL,
  `Name` VARCHAR(1000) DEFAULT NULL,
  `Description` VARCHAR(1000) DEFAULT NULL,
  `MustPostToParticipate` TINYINT DEFAULT NULL,
  `AllowAnon` TINYINT DEFAULT NULL,
  `IsHidden` TINYINT DEFAULT NULL,
  `RequiresApproval` TINYINT DEFAULT NULL,
  `LastPostDate` DATETIME DEFAULT NULL,
  `LastPostUserId` BIGINT DEFAULT NULL,
  `NumViews` BIGINT DEFAULT NULL,
  `SortOrder` INT DEFAULT NULL,
  `IsDeleted` TINYINT DEFAULT NULL,
  `DeletedDate` DATETIME DEFAULT NULL,
  `DeletedByUserId` INT DEFAULT NULL,
  `GradeItemId` INT DEFAULT NULL,
  `ScoreOutOf` FLOAT DEFAULT NULL,
  `ScoreCalculationMethod` VARCHAR(19) DEFAULT NULL,
  `IncludeNonScoredValues` TINYINT DEFAULT NULL,
  `Version` BIGINT DEFAULT NULL,
  `ResultId` INT DEFAULT NULL,
  `StartDate` DATETIME DEFAULT NULL,
  `StartDateAvailabilityType` SMALLINT DEFAULT NULL,
  `EndDate` DATETIME DEFAULT NULL,
  `EndDateAvailabilityType` SMALLINT DEFAULT NULL,
  UNIQUE KEY (`TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
