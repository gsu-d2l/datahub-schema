DROP TABLE D2L_SCORM_VISIT_LOAD;

CREATE TABLE D2L_SCORM_VISIT_LOAD (
  VisitId VARCHAR2(36) NOT NULL,
  ScormObjectId VARCHAR2(36) DEFAULT NULL,
  UserId NUMBER(10) DEFAULT NULL,
  OrgUnitId NUMBER(10) DEFAULT NULL,
  FirstAccessDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  LastAccessDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  CompletedDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  Completion NVARCHAR2(200) DEFAULT NULL,
  Success NVARCHAR2(200) DEFAULT NULL,
  Score FLOAT(24) DEFAULT NULL,
  TimeSpent NUMBER(10) DEFAULT NULL,
  Progress FLOAT(24) DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_SCORM_VISIT_LOAD_PK ON D2L_SCORM_VISIT_LOAD (
  VisitId
);

QUIT;
