DROP TABLE D2L_LTI_LAUNCH;

CREATE TABLE D2L_LTI_LAUNCH (
  LTILaunchId VARCHAR2(36) NOT NULL,
  UserId NUMBER(10) DEFAULT NULL,
  IMSRoleNames NVARCHAR2(4000) DEFAULT NULL,
  ImpersonatingUserId NUMBER(20) DEFAULT NULL,
  ImpersonatingUserIMSRoleNames NVARCHAR2(4000) DEFAULT NULL,
  LaunchDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  OrgUnitId NUMBER(20) DEFAULT NULL,
  LTILinkId NUMBER(20) DEFAULT NULL,
  DeploymentId VARCHAR2(36) DEFAULT NULL,
  ClientId VARCHAR2(36) DEFAULT NULL,
  ToolProviderId NVARCHAR2(600) DEFAULT NULL,
  ContentTopicId NUMBER(20) DEFAULT NULL,
  ParentModuleId NUMBER(20) DEFAULT NULL,
  Placement NVARCHAR2(20) DEFAULT NULL,
  MessageVersion NVARCHAR2(20) DEFAULT NULL,
  RequestType NVARCHAR2(60) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_LTI_LAUNCH_PK ON D2L_LTI_LAUNCH (
  LTILaunchId
);

QUIT;
