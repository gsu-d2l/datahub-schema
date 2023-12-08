DROP TABLE D2L_RUBRIC_CRITERIA_LEVEL_LOAD;

CREATE TABLE D2L_RUBRIC_CRITERIA_LEVEL_LOAD (
  RubricId NUMBER(20) NOT NULL,
  CriterionId NUMBER(20) NOT NULL,
  Description NVARCHAR2(2000) DEFAULT NULL,
  Feedback NVARCHAR2(2000) DEFAULT NULL,
  Value DECIMAL(19, 9) DEFAULT NULL,
  LevelId NUMBER(20) NOT NULL,
  IsDeleted NUMBER(1) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_RUBRIC_CRITERIA_LEVEL_LOAD_PK ON D2L_RUBRIC_CRITERIA_LEVEL_LOAD (
  RubricId,
  CriterionId,
  LevelId
);

QUIT;
