DROP TABLE D2L_RELEASE_CONDITION_RESULT_LOAD;

CREATE TABLE D2L_RELEASE_CONDITION_RESULT_LOAD (
  ResultId NUMBER(10) NOT NULL,
  UserId NUMBER(10) NOT NULL,
  Met VARCHAR2(14 CHAR) DEFAULT NULL,
  Version NUMBER(20) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_RELEASE_CONDITION_RESULT_LOAD_PK ON D2L_RELEASE_CONDITION_RESULT_LOAD (
  ResultId,
  UserId
);

QUIT;
