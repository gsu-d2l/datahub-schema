DROP TABLE IF EXISTS `AudioVideoProcessed_LOAD`;

CREATE TABLE `AudioVideoProcessed_LOAD` (
  `ContentId` VARCHAR(36) NOT NULL,
  `RevisionId` VARCHAR(36) NOT NULL,
  `RevisionNumber` INT DEFAULT NULL,
  `Type` VARCHAR(5) DEFAULT NULL,
  `Source` VARCHAR(32) DEFAULT NULL,
  `RevisionSize` BIGINT DEFAULT NULL,
  `Duration` INT DEFAULT NULL,
  `RequiredTranscoding` TINYINT DEFAULT NULL,
  `RequiredTranscribing` TINYINT DEFAULT NULL,
  `LastModified` DATETIME DEFAULT NULL,
  UNIQUE KEY (`ContentId`, `RevisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
