DROP TABLE D2L_COURSE_COPY_LOG_LOAD;

CREATE TABLE D2L_COURSE_COPY_LOG_LOAD (
  SourceOrgUnitId NUMBER(10) DEFAULT NULL,
  DestinationOrgUnitId NUMBER(10) DEFAULT NULL,
  UserId NUMBER(20) DEFAULT NULL,
  Status VARCHAR2(256 CHAR) DEFAULT NULL,
  StartDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  EndDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  IsDestinationNew NUMBER(1) DEFAULT NULL,
  CopyProtectedResources NUMBER(1) DEFAULT NULL,
  CopyCourseJobId NUMBER(20) NOT NULL
);

CREATE UNIQUE INDEX D2L_COURSE_COPY_LOG_LOAD_PK ON D2L_COURSE_COPY_LOG_LOAD (
  CopyCourseJobId
);

QUIT;
