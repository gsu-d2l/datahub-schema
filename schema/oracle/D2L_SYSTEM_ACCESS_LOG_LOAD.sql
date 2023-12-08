DROP TABLE D2L_SYSTEM_ACCESS_LOG_LOAD;

CREATE TABLE D2L_SYSTEM_ACCESS_LOG_LOAD (
  SessionId NVARCHAR2(72) NOT NULL,
  UserId NUMBER(10) NOT NULL,
  Timestamp TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
  State NVARCHAR2(40) NOT NULL,
  Source NVARCHAR2(40) DEFAULT NULL,
  AppVersion NVARCHAR2(40) DEFAULT NULL,
  Device NVARCHAR2(100) DEFAULT NULL,
  IsOfflineMode NUMBER(1) DEFAULT NULL,
  IPAddress NVARCHAR2(90) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_SYSTEM_ACCESS_LOG_LOAD_PK ON D2L_SYSTEM_ACCESS_LOG_LOAD (
  SessionId,
  UserId,
  Timestamp,
  State
);

QUIT;