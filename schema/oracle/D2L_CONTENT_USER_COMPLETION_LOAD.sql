DROP TABLE D2L_CONTENT_USER_COMPLETION_LOAD;

CREATE TABLE D2L_CONTENT_USER_COMPLETION_LOAD (
  ContentObjectId NUMBER(10) NOT NULL,
  OrgUnitId NUMBER(10) DEFAULT NULL,
  UserId NUMBER(10) NOT NULL,
  DateCompleted TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_CONTENT_USER_COMPLETION_LOAD_PK ON D2L_CONTENT_USER_COMPLETION_LOAD (
  ContentObjectId,
  UserId
);

QUIT;
