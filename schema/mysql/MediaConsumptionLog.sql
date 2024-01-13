DROP TABLE IF EXISTS `MediaConsumptionLog`;

CREATE TABLE `MediaConsumptionLog` (
  `LogId` VARCHAR(36) NOT NULL,
  `UserId` INT DEFAULT NULL,
  `ContentId` VARCHAR(36) DEFAULT NULL,
  `RevisionId` VARCHAR(36) DEFAULT NULL,
  `ContentType` VARCHAR(5) DEFAULT NULL,
  `ClientApp` VARCHAR(32) DEFAULT NULL,
  `DateConsumed` DATETIME DEFAULT NULL,
  `DurationPercentageWatched` INT DEFAULT NULL,
  UNIQUE KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
