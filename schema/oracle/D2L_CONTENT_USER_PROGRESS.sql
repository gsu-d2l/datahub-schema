DROP TABLE D2L_CONTENT_USER_PROGRESS;

CREATE TABLE D2L_CONTENT_USER_PROGRESS (
  ContentObjectId NUMBER(10) NOT NULL,
  UserId NUMBER(10) NOT NULL,
  CompletedDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  LastVisited TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  IsRead NUMBER(1) DEFAULT NULL,
  NumRealVisits NUMBER(10) DEFAULT NULL,
  NumFakeVisits NUMBER(10) DEFAULT NULL,
  TotalTime NUMBER(20) DEFAULT NULL,
  IsVisited NUMBER(1) DEFAULT NULL,
  IsCurrentBookmark NUMBER(1) DEFAULT NULL,
  IsSelfAssessComplete NUMBER(1) DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_CONTENT_USER_PROGRESS_PK ON D2L_CONTENT_USER_PROGRESS (
  ContentObjectId,
  UserId
);

QUIT;
