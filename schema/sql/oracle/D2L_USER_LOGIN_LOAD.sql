DROP TABLE D2L_USER_LOGIN_LOAD;

CREATE TABLE D2L_USER_LOGIN_LOAD (
  OrgId NUMBER(10) DEFAULT NULL,
  UserId NUMBER(10) DEFAULT NULL,
  UserName NVARCHAR2(512) DEFAULT NULL,
  IP VARCHAR2(128 CHAR) DEFAULT NULL,
  SessionId NUMBER(10) DEFAULT NULL,
  StatusType NVARCHAR2(100) DEFAULT NULL,
  AttemptDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  ImpersonatingUserId NUMBER(10) DEFAULT NULL,
  TimeOff NUMBER(10) DEFAULT NULL,
  LoginAttemptId NVARCHAR2(72) NOT NULL,
  LoginSource NVARCHAR2(100) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_USER_LOGIN_LOAD_PK ON D2L_USER_LOGIN_LOAD (
  LoginAttemptId
);

QUIT;