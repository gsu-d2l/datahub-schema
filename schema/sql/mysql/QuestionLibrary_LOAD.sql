DROP TABLE IF EXISTS `QuestionLibrary_LOAD`;

CREATE TABLE `QuestionLibrary_LOAD` (
  `QuestionId` BIGINT NOT NULL,
  `QuestionVersionId` BIGINT NOT NULL,
  `IsAutoGraded` TINYINT DEFAULT NULL,
  `TemplateTypeId` INT DEFAULT NULL,
  `QuestionType` VARCHAR(28) DEFAULT NULL,
  `Name` VARCHAR(256) DEFAULT NULL,
  `Question` VARCHAR(1000) DEFAULT NULL,
  `Comment` VARCHAR(1000) DEFAULT NULL,
  `AnswerKey` VARCHAR(1000) DEFAULT NULL,
  `CreationDate` DATETIME DEFAULT NULL,
  `Version` BIGINT DEFAULT NULL,
  `AllowsAttachments` TINYINT DEFAULT NULL,
  `AIUtilization` INT DEFAULT NULL,
  UNIQUE KEY (`QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
