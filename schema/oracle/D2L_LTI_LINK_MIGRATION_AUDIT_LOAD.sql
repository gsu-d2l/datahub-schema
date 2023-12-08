DROP TABLE D2L_LTI_LINK_MIGRATION_AUDIT_LOAD;

CREATE TABLE D2L_LTI_LINK_MIGRATION_AUDIT_LOAD (
  LTIMigrationId VARCHAR2(36) NOT NULL,
  UserId NUMBER(20) DEFAULT NULL,
  MigrationDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  OrgUnitId NUMBER(20) DEFAULT NULL,
  LinkId NUMBER(20) DEFAULT NULL,
  LinkURL NVARCHAR2(4000) DEFAULT NULL,
  LinkName NVARCHAR2(400) DEFAULT NULL,
  ClientId NVARCHAR2(510) DEFAULT NULL,
  RegistrationDomain NVARCHAR2(4000) DEFAULT NULL,
  DeploymentId VARCHAR2(36) DEFAULT NULL,
  JobId NUMBER(20) DEFAULT NULL,
  Status NUMBER(5) DEFAULT NULL,
  FailureCode NUMBER(5) DEFAULT NULL,
  MigrationType NUMBER(5) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_LTI_LINK_MIGRATION_AUDIT_LOAD_PK ON D2L_LTI_LINK_MIGRATION_AUDIT_LOAD (
  LTIMigrationId
);

QUIT;
