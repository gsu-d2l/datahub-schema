DROP TABLE D2L_SCORM_INTERACTION_OBJECTIVE_LOAD;

CREATE TABLE D2L_SCORM_INTERACTION_OBJECTIVE_LOAD (
  InteractionId VARCHAR2(36) NOT NULL,
  ObjectiveId VARCHAR2(36) NOT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_SCORM_INTERACTION_OBJECTIVE_LOAD_PK ON D2L_SCORM_INTERACTION_OBJECTIVE_LOAD (
  InteractionId,
  ObjectiveId
);

QUIT;
