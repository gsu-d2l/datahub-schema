DROP TABLE D2L_SURVEY_USER_ANSWER_RESPONSE;

CREATE TABLE D2L_SURVEY_USER_ANSWER_RESPONSE (
  AttemptId NUMBER(20) NOT NULL,
  AttemptNumber NUMBER(10) DEFAULT NULL,
  QuestionId NUMBER(20) NOT NULL,
  QuestionVersionId NUMBER(20) NOT NULL,
  AnswerId NUMBER(20) NOT NULL,
  SortOrder NUMBER(20) DEFAULT NULL,
  IsCorrect NUMBER(1) DEFAULT NULL,
  UserSelection NUMBER(20) DEFAULT NULL,
  UserAnswer NVARCHAR2(2000) DEFAULT NULL,
  FileSetId NUMBER(20) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_SURVEY_USER_ANSWER_RESPONSE_PK ON D2L_SURVEY_USER_ANSWER_RESPONSE (
  AttemptId,
  QuestionId,
  QuestionVersionId,
  AnswerId
);

QUIT;
