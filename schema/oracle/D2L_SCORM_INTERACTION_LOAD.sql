DROP TABLE D2L_SCORM_INTERACTION_LOAD;

CREATE TABLE D2L_SCORM_INTERACTION_LOAD (
  InteractionId VARCHAR2(36) NOT NULL,
  ActivityId VARCHAR2(36) DEFAULT NULL,
  InternalId NVARCHAR2(510) DEFAULT NULL,
  InteractionType NVARCHAR2(200) DEFAULT NULL,
  Description NVARCHAR2(500) DEFAULT NULL,
  Weighting FLOAT(24) DEFAULT NULL,
  CorrectResponses NVARCHAR2(4000) DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_SCORM_INTERACTION_LOAD_PK ON D2L_SCORM_INTERACTION_LOAD (
  InteractionId
);

QUIT;
