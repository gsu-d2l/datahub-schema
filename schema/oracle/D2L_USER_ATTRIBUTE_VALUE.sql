DROP TABLE D2L_USER_ATTRIBUTE_VALUE;

CREATE TABLE D2L_USER_ATTRIBUTE_VALUE (
  UserId NUMBER(10) NOT NULL,
  AttributeId NVARCHAR2(256) NOT NULL,
  Value NVARCHAR2(4000) DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  ModifiedBy NUMBER(10) DEFAULT NULL,
  IsDeleted NUMBER(1) DEFAULT NULL,
  Version NUMBER(10) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_USER_ATTRIBUTE_VALUE_PK ON D2L_USER_ATTRIBUTE_VALUE (
  UserId,
  AttributeId
);

QUIT;
