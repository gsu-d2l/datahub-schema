DROP TABLE D2L_COURSE_PUBLISHER_RECIPIENT;

CREATE TABLE D2L_COURSE_PUBLISHER_RECIPIENT (
  RecipientID VARCHAR2(36) NOT NULL,
  Name NVARCHAR2(512) DEFAULT NULL,
  CreatedAt TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_COURSE_PUBLISHER_RECIPIENT_PK ON D2L_COURSE_PUBLISHER_RECIPIENT (
  RecipientID
);

QUIT;
