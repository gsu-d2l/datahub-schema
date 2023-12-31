DROP TABLE D2L_CHAT_OBJECT;

CREATE TABLE D2L_CHAT_OBJECT (
  ChatId NUMBER(20) NOT NULL,
  OrgUnitId NUMBER(10) DEFAULT NULL,
  ChatType NVARCHAR2(256) DEFAULT NULL,
  Name NVARCHAR2(300) DEFAULT NULL,
  Description NVARCHAR2(2000) DEFAULT NULL,
  CreatorUserId NUMBER(10) DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_CHAT_OBJECT_PK ON D2L_CHAT_OBJECT (
  ChatId
);

QUIT;
