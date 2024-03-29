DROP TABLE IF EXISTS `OutcomeAssessedCheckpoint_LOAD`;

CREATE TABLE `OutcomeAssessedCheckpoint_LOAD` (
  `CheckpointId` VARCHAR(36) NOT NULL,
  `DemonstrationId` VARCHAR(36) NOT NULL,
  `Feedback` VARCHAR(1000) DEFAULT NULL,
  `ConfigDecayRate` INT DEFAULT NULL,
  `ConfigAggregationMethod` INT DEFAULT NULL,
  `ConfigIncludedActivities` INT DEFAULT NULL,
  `ConfigMultipleAttemptStrategy` INT DEFAULT NULL,
  `ConfigRecentlyAssessedActivityCount` INT DEFAULT NULL,
  `ConfigTieBreaker` INT DEFAULT NULL,
  `LastModifiedDate` DATETIME DEFAULT NULL,
  `LastModifiedBy` INT DEFAULT NULL,
  `IsDeleted` TINYINT DEFAULT NULL,
  `HasMetAchievementThreshold` TINYINT DEFAULT NULL,
  UNIQUE KEY (`CheckpointId`, `DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
