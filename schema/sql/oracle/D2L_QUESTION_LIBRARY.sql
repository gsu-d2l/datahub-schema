DROP TABLE D2L_QUESTION_LIBRARY;

CREATE TABLE D2L_QUESTION_LIBRARY (
  QuestionId NUMBER(20) NOT NULL,
  QuestionVersionId NUMBER(20) NOT NULL,
  IsAutoGraded NUMBER(1) DEFAULT NULL,
  TemplateTypeId NUMBER(10) DEFAULT NULL,
  QuestionType VARCHAR2(56 CHAR) DEFAULT NULL,
  Name NVARCHAR2(512) DEFAULT NULL,
  Question NVARCHAR2(2000) DEFAULT NULL,
  D2LComment NVARCHAR2(2000) DEFAULT NULL,
  AnswerKey NVARCHAR2(2000) DEFAULT NULL,
  CreationDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  Version NUMBER(20) DEFAULT NULL,
  AllowsAttachments NUMBER(1) DEFAULT NULL,
  AIUtilization NUMBER(10) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_QUESTION_LIBRARY_PK ON D2L_QUESTION_LIBRARY (
  QuestionId,
  QuestionVersionId
);

QUIT;
