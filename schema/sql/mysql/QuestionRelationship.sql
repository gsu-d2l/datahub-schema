DROP TABLE IF EXISTS `QuestionRelationship`;

CREATE TABLE `QuestionRelationship` (
  `CollectionId` BIGINT DEFAULT NULL,
  `QuestionId` BIGINT DEFAULT NULL,
  `QuestionVersionId` BIGINT DEFAULT NULL,
  `Order` BIGINT DEFAULT NULL,
  `SectionId` BIGINT DEFAULT NULL,
  `IsQuestionPool` TINYINT DEFAULT NULL,
  `CreationDate` DATETIME DEFAULT NULL,
  `CreatedBy` BIGINT DEFAULT NULL,
  `LastModified` DATETIME DEFAULT NULL,
  `LastModifiedBy` BIGINT DEFAULT NULL,
  `Points` DECIMAL(19, 9) DEFAULT NULL,
  `Difficulty` INT DEFAULT NULL,
  `IsBonus` TINYINT DEFAULT NULL,
  `IsMandatory` TINYINT DEFAULT NULL,
  `IsDeleted` TINYINT DEFAULT NULL,
  `Version` BIGINT DEFAULT NULL,
  `ObjectId` BIGINT NOT NULL,
  UNIQUE KEY (`QuestionVersionId`, `ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
