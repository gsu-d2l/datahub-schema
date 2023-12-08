DROP TABLE D2L_SCORM_ACTIVITY;

CREATE TABLE D2L_SCORM_ACTIVITY (
  ActivityId VARCHAR2(36) NOT NULL,
  ScormObjectId VARCHAR2(36) DEFAULT NULL,
  ParentActivityId VARCHAR2(36) DEFAULT NULL,
  NumChildren NUMBER(10) DEFAULT NULL,
  InternalId NVARCHAR2(510) DEFAULT NULL,
  Title NVARCHAR2(400) DEFAULT NULL,
  CompletionThreshold FLOAT(24) DEFAULT NULL,
  PassingScore FLOAT(24) DEFAULT NULL,
  PassingScoreUsed NUMBER(1) DEFAULT NULL,
  ScoreMin FLOAT(24) DEFAULT NULL,
  ScoreMax FLOAT(24) DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_SCORM_ACTIVITY_PK ON D2L_SCORM_ACTIVITY (
  ActivityId
);

QUIT;
