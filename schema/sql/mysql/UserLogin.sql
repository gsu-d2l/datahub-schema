DROP TABLE IF EXISTS `UserLogin`;

CREATE TABLE `UserLogin` (
  `UserId` INT DEFAULT NULL,
  `UserName` VARCHAR(256) DEFAULT NULL,
  `IP` VARCHAR(64) DEFAULT NULL,
  `SessionId` INT DEFAULT NULL,
  `StatusType` VARCHAR(50) DEFAULT NULL,
  `AttemptDate` DATETIME DEFAULT NULL,
  `ImpersonatingUserId` INT DEFAULT NULL,
  `LoginAttemptId` VARCHAR(36) NOT NULL,
  `LoginSource` VARCHAR(50) DEFAULT NULL,
  UNIQUE KEY (`LoginAttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
