-- gsu mods

DROP TABLE D2L_USER_LOAD;

CREATE TABLE D2L_USER_LOAD (
  UserId NUMBER(10) NOT NULL,
  UserName NVARCHAR2(540) DEFAULT NULL,
  OrgDefinedId NVARCHAR2(512) DEFAULT NULL,
  FirstName NVARCHAR2(128) DEFAULT NULL,
  MiddleName NVARCHAR2(128) DEFAULT NULL,
  LastName NVARCHAR2(128) DEFAULT NULL,
  IsActive NUMBER(1) DEFAULT NULL,
  Organization VARCHAR2(512 CHAR) DEFAULT NULL,
  ExternalEmail NVARCHAR2(512) DEFAULT NULL,
  SignupDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  FirstLoginDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  Version NUMBER(20) DEFAULT NULL,
  OrgRoleId NUMBER(10) DEFAULT NULL,
  OrgRoleName NVARCHAR2(240) DEFAULT NULL,
  LastAccessed TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  SisPIDM NUMBER(8,0) DEFAULT NULL,
  SisPantherId VARCHAR2(9 CHAR) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_USER_LOAD_PK ON D2L_USER_LOAD (UserId);

QUIT;
