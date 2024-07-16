ALTER TABLE AwardIssued_LOAD
  DROP COLUMN `Type`,
  DROP COLUMN `IsRevoked`,
  DROP COLUMN `Credits`
;
ALTER TABLE AwardIssued
  DROP COLUMN `Type`,
  DROP COLUMN `IsRevoked`,
  DROP COLUMN `Credits`
;


ALTER TABLE ChecklistCompletion_LOAD
  ADD COLUMN `IsCompleted` TINYINT DEFAULT NULL,
  ADD COLUMN `DateDeleted` DATETIME DEFAULT NULL,
  ADD COLUMN `DeletedBy` INT DEFAULT NULL,
  ADD COLUMN `Version` BIGINT DEFAULT NULL
;
ALTER TABLE ChecklistCompletion
  ADD COLUMN `IsCompleted` TINYINT DEFAULT NULL,
  ADD COLUMN `DateDeleted` DATETIME DEFAULT NULL,
  ADD COLUMN `DeletedBy` INT DEFAULT NULL,
  ADD COLUMN `Version` BIGINT DEFAULT NULL
;


ALTER TABLE EnrollmentWithdrawal_LOAD
  DROP COLUMN `EnrollmentType`
;
ALTER TABLE EnrollmentWithdrawal
  DROP COLUMN `EnrollmentType`
;


TRUNCATE TABLE GradeScheme_LOAD;
ALTER TABLE GradeScheme_LOAD
  DROP KEY `GradeSchemeId`,
  DROP COLUMN `GradeSchemeRangeId`,
  DROP COLUMN `IsDeleted`,
  ADD UNIQUE KEY (`GradeSchemeId`)
;
INSERT INTO GradeScheme_LOAD
  (`GradeSchemeId`, `OrgUnitId`, `SchemeName`, `DeletedDate`, `Version`)
SELECT DISTINCT
  `GradeSchemeId`,
  `OrgUnitId`,
  `SchemeName`,
  `DeletedDate`,
  `Version`
FROM
  GradeScheme
;


TRUNCATE TABLE GradeScheme;
ALTER TABLE GradeScheme
  DROP KEY `GradeSchemeId`,
  DROP COLUMN `GradeSchemeRangeId`,
  DROP COLUMN `IsDeleted`,
  ADD UNIQUE KEY (`GradeSchemeId`)
;
INSERT INTO GradeScheme
  (`GradeSchemeId`, `OrgUnitId`, `SchemeName`, `DeletedDate`, `Version`)
SELECT
  `GradeSchemeId`,
  `OrgUnitId`,
  `SchemeName`,
  `DeletedDate`,
  `Version`
FROM
  GradeScheme_LOAD
;


ALTER TABLE LTILinkMigrationAudit_LOAD
  ADD COLUMN `LegacyURL` VARCHAR(2083) DEFAULT NULL;
ALTER TABLE LTILinkMigrationAudit
  ADD COLUMN `LegacyURL` VARCHAR(2083) DEFAULT NULL;


ALTER TABLE QuestionRelationship_LOAD
  DROP KEY `ObjectId`,
  ADD UNIQUE KEY (`ObjectId`, `QuestionVersionId`)
;
ALTER TABLE QuestionRelationship
  DROP KEY `ObjectId`,
  ADD UNIQUE KEY (`ObjectId`, `QuestionVersionId`)
;


ALTER TABLE QuizAttempt_LOAD
  DROP COLUMN `GracePeriod`,
  DROP COLUMN `ExtendedDeadline`
;
ALTER TABLE QuizAttempt
  DROP COLUMN `GracePeriod`,
  DROP COLUMN `ExtendedDeadline`
;


ALTER TABLE QuizObject_LOAD
  DROP COLUMN `TimeLimitExceededBehavior`,
  DROP COLUMN `TimeLimitGracePeriod`,
  DROP COLUMN `ShowClock`
;
ALTER TABLE QuizObject
  DROP COLUMN `TimeLimitExceededBehavior`,
  DROP COLUMN `TimeLimitGracePeriod`,
  DROP COLUMN `ShowClock`
;


ALTER TABLE RoleDetail_LOAD
  DROP COLUMN `OrgId`,
  DROP COLUMN `ClassListRoleCategory`,
  DROP COLUMN `ClassListRoleCategoryOrder`,
  DROP COLUMN `Version`
;
ALTER TABLE RoleDetail
  DROP COLUMN `OrgId`,
  DROP COLUMN `ClassListRoleCategory`,
  DROP COLUMN `ClassListRoleCategoryOrder`,
  DROP COLUMN `Version`
;


ALTER TABLE UserLogin_LOAD
  DROP COLUMN `OrgId`,
  DROP COLUMN `TimeOff`
;
ALTER TABLE UserLogin
  DROP COLUMN `OrgId`,
  DROP COLUMN `TimeOff`
;
