DROP TABLE D2L_MEDIA_CONSUMPTION_LOG_LOAD;

CREATE TABLE D2L_MEDIA_CONSUMPTION_LOG_LOAD (
  LogId VARCHAR2(36) NOT NULL,
  UserId NUMBER(10) DEFAULT NULL,
  ContentId VARCHAR2(36) DEFAULT NULL,
  RevisionId VARCHAR2(36) DEFAULT NULL,
  ContentType NVARCHAR2(10) DEFAULT NULL,
  ClientApp NVARCHAR2(64) DEFAULT NULL,
  DateConsumed TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  DurationPercentageWatched NUMBER(10) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_MEDIA_CONSUMPTION_LOG_LOAD_PK ON D2L_MEDIA_CONSUMPTION_LOG_LOAD (
  LogId
);

QUIT;