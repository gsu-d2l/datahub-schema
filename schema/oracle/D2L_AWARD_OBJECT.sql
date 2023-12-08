DROP TABLE D2L_AWARD_OBJECT;

CREATE TABLE D2L_AWARD_OBJECT (
  AwardId NUMBER(20) NOT NULL,
  Name NVARCHAR2(512) DEFAULT NULL,
  AwardTypeId NUMBER(10) DEFAULT NULL,
  Type NVARCHAR2(256) DEFAULT NULL,
  Description NVARCHAR2(1024) DEFAULT NULL,
  ExpiryCalculationType NVARCHAR2(256) DEFAULT NULL,
  ExpiryNotificationType NVARCHAR2(256) DEFAULT NULL,
  ExpiryDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  ImagePath VARCHAR2(2000 CHAR) DEFAULT NULL,
  CreatedByUserId NUMBER(20) DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  IsDeleted NUMBER(1) DEFAULT NULL,
  Criteria NVARCHAR2(2000) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_AWARD_OBJECT_PK ON D2L_AWARD_OBJECT (
  AwardId
);

QUIT;
