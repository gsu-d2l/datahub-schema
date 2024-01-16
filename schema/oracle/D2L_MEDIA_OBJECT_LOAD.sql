DROP TABLE D2L_MEDIA_OBJECT_LOAD;

CREATE TABLE D2L_MEDIA_OBJECT_LOAD (
  ContentId VARCHAR2(36) NOT NULL,
  Title NVARCHAR2(2000) DEFAULT NULL,
  RevisionCount NUMBER(10) DEFAULT NULL,
  OwnerId NUMBER(10) DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_MEDIA_OBJECT_LOAD_PK ON D2L_MEDIA_OBJECT_LOAD (
  ContentId
);

QUIT;