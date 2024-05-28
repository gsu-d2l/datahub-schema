DROP TABLE IF EXISTS `ChecklistCompletion_LOAD`;

CREATE TABLE `ChecklistCompletion_LOAD` (
  `UserId` INT NOT NULL,
  `DateCompleted` DATETIME DEFAULT NULL,
  `ItemId` BIGINT NOT NULL,
  `LastModified` DATETIME DEFAULT NULL,
  `IsCompleted` TINYINT DEFAULT NULL,
  `DateDeleted` DATETIME DEFAULT NULL,
  `DeletedBy` INT DEFAULT NULL,
  `Version` BIGINT DEFAULT NULL,
  UNIQUE KEY (`UserId`, `ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
