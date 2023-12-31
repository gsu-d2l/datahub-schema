DROP TABLE D2L_SCORM_OBJECTIVE_ATTEMPT_LOAD;

CREATE TABLE D2L_SCORM_OBJECTIVE_ATTEMPT_LOAD (
  VisitId VARCHAR2(36) NOT NULL,
  ObjectiveId VARCHAR2(36) NOT NULL,
  AttemptNumber NUMBER(10) NOT NULL,
  Score FLOAT(24) DEFAULT NULL,
  ScoreRaw FLOAT(24) DEFAULT NULL,
  Success NVARCHAR2(200) DEFAULT NULL,
  Completion NVARCHAR2(200) DEFAULT NULL,
  Progress FLOAT(24) DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_SCORM_OBJECTIVE_ATTEMPT_LOAD_PK ON D2L_SCORM_OBJECTIVE_ATTEMPT_LOAD (
  VisitId,
  ObjectiveId,
  AttemptNumber
);

QUIT;
