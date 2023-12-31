DROP TABLE D2L_JIT_PROVISIONED_USER_LOG_LOAD;

CREATE TABLE D2L_JIT_PROVISIONED_USER_LOG_LOAD (
  UserId NUMBER(10) NOT NULL,
  MappingField NVARCHAR2(64) DEFAULT NULL,
  MappingFieldValue NVARCHAR2(540) DEFAULT NULL,
  ProviderType NVARCHAR2(64) DEFAULT NULL,
  ProviderId NVARCHAR2(2048) DEFAULT NULL,
  RoleId NUMBER(10) DEFAULT NULL,
  Timestamp TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
  Action NVARCHAR2(32) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_JIT_PROVISIONED_USER_LOG_LOAD_PK ON D2L_JIT_PROVISIONED_USER_LOG_LOAD (
  UserId,
  Timestamp
);

QUIT;
