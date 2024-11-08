DROP TABLE IF EXISTS `AttendanceSession`;

CREATE TABLE `AttendanceSession` (
  `AttendanceSessionId` BIGINT NOT NULL,
  `AttendanceRegisterId` BIGINT DEFAULT NULL,
  `Name` VARCHAR(128) DEFAULT NULL,
  `Description` VARCHAR(256) DEFAULT NULL,
  `SortOrder` INT DEFAULT NULL,
  `Version` BIGINT DEFAULT NULL,
  `DateDeleted` DATETIME DEFAULT NULL,
  `DeletedBy` INT DEFAULT NULL,
  UNIQUE KEY (`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
