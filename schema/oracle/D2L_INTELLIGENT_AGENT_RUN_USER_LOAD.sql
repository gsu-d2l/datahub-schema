DROP TABLE D2L_INTELLIGENT_AGENT_RUN_USER_LOAD;

CREATE TABLE D2L_INTELLIGENT_AGENT_RUN_USER_LOAD (
  AgentId NUMBER(20) NOT NULL,
  AgentRunId NUMBER(20) NOT NULL,
  UserId NUMBER(10) NOT NULL,
  OrgUnitId NUMBER(10) DEFAULT NULL,
  ActionTypeName NVARCHAR2(100) DEFAULT NULL,
  ActionHasError NUMBER(1) DEFAULT NULL,
  ActionHasInfo NUMBER(1) DEFAULT NULL,
  ActionHasWarning NUMBER(1) DEFAULT NULL,
  ShouldRetry NUMBER(1) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_INTELLIGENT_AGENT_RUN_USER_LOAD_PK ON D2L_INTELLIGENT_AGENT_RUN_USER_LOAD (
  AgentId,
  AgentRunId,
  UserId
);

QUIT;
