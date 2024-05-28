DROP TABLE D2L_ROLE_DETAIL_LOAD;

CREATE TABLE D2L_ROLE_DETAIL_LOAD (
  RoleId NUMBER(10) NOT NULL,
  RoleName NVARCHAR2(240) DEFAULT NULL,
  Description NVARCHAR2(800) DEFAULT NULL,
  IsCascading NUMBER(1) DEFAULT NULL,
  InClassList NUMBER(1) DEFAULT NULL,
  ClassListRoleName NVARCHAR2(240) DEFAULT NULL,
  ClassListShowGroups NUMBER(1) DEFAULT NULL,
  ClassListShowSections NUMBER(1) DEFAULT NULL,
  ClassListDisplayRole NUMBER(1) DEFAULT NULL,
  AccessInactiveCO NUMBER(1) DEFAULT NULL,
  HasSpecialAccess NUMBER(1) DEFAULT NULL,
  AddToCourseOfferingGroups NUMBER(1) DEFAULT NULL,
  CanBeAutoEnrolledIntoGroups NUMBER(1) DEFAULT NULL,
  AddToCourseOfferingSections NUMBER(1) DEFAULT NULL,
  CanBeAutoEnrolledIntoSections NUMBER(1) DEFAULT NULL,
  AccessPastCourses NUMBER(1) DEFAULT NULL,
  AccessFutureCourses NUMBER(1) DEFAULT NULL,
  SortOrder NUMBER(10) DEFAULT NULL,
  ShowInContent NUMBER(1) DEFAULT NULL,
  ShowInDiscussionAssess NUMBER(1) DEFAULT NULL,
  ShowInDiscussionStats NUMBER(1) DEFAULT NULL,
  ShowInGrades NUMBER(1) DEFAULT NULL,
  ShowInAttendance NUMBER(1) DEFAULT NULL,
  AllowSelfEnrollInGroups NUMBER(1) DEFAULT NULL,
  ShowInRegistration NUMBER(1) DEFAULT NULL,
  ShowInUserProgress NUMBER(1) DEFAULT NULL,
  RoleAlias NVARCHAR2(240) DEFAULT NULL,
  RoleCode NVARCHAR2(200) DEFAULT NULL,
  LastModifiedDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  DeletedBy NUMBER(10) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_ROLE_DETAIL_LOAD_PK ON D2L_ROLE_DETAIL_LOAD (
  RoleId
);

QUIT;
