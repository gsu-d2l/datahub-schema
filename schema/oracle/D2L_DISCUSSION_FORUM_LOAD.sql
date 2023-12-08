DROP TABLE D2L_DISCUSSION_FORUM_LOAD;

CREATE TABLE D2L_DISCUSSION_FORUM_LOAD (
  OrgUnitId NUMBER(10) DEFAULT NULL,
  ForumId NUMBER(20) NOT NULL,
  Name NVARCHAR2(800) DEFAULT NULL,
  Description NVARCHAR2(2000) DEFAULT NULL,
  MustPostToParticipate NUMBER(1) DEFAULT NULL,
  AllowAnon NUMBER(1) DEFAULT NULL,
  IsHidden NUMBER(1) DEFAULT NULL,
  RequiresApproval NUMBER(1) DEFAULT NULL,
  SortOrder NUMBER(10) DEFAULT NULL,
  IsDeleted NUMBER(1) DEFAULT NULL,
  DeletedDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  DeletedByUserId NUMBER(10) DEFAULT NULL,
  ResultId NUMBER(10) DEFAULT NULL,
  StartDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  StartDateAvailabilityType NUMBER(5) DEFAULT NULL,
  EndDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  EndDateAvailabilityType NUMBER(5) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_DISCUSSION_FORUM_LOAD_PK ON D2L_DISCUSSION_FORUM_LOAD (
  ForumId
);

QUIT;
