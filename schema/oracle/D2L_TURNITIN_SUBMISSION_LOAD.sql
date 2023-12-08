DROP TABLE D2L_TURNITIN_SUBMISSION_LOAD;

CREATE TABLE D2L_TURNITIN_SUBMISSION_LOAD (
  DropboxId NUMBER(20) DEFAULT NULL,
  SubmissionId NUMBER(20) NOT NULL,
  FileId NUMBER(20) NOT NULL,
  LastSubmissionDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  SubmissionStatus NUMBER(5) DEFAULT NULL,
  SubmissionErrorType NUMBER(5) DEFAULT NULL,
  ErrorMessage NVARCHAR2(510) DEFAULT NULL,
  SubmittedBy NUMBER(10) DEFAULT NULL,
  LastRefreshDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_TURNITIN_SUBMISSION_LOAD_PK ON D2L_TURNITIN_SUBMISSION_LOAD (
  SubmissionId,
  FileId
);

QUIT;
