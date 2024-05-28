DROP TABLE D2L_COURSE_ACCESS;

CREATE TABLE D2L_COURSE_ACCESS (
  OrgUnitId NUMBER(10) NOT NULL,
  UserId NUMBER(10) NOT NULL,
  DayAccessed TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
  IsLastAccessed NUMBER(1) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_COURSE_ACCESS_PK ON D2L_COURSE_ACCESS (OrgUnitId, UserId, DayAccessed);
CREATE INDEX D2L_COURSE_ACCESS_ORGUNITUSER ON D2L_COURSE_ACCESS (OrgUnitId);
CREATE INDEX D2L_COURSE_ACCESS_USERID ON D2L_COURSE_ACCESS (UserId);
CREATE INDEX D2L_COURSE_ACCESS_ISLAST ON D2L_COURSE_ACCESS (OrgUnitId, UserId, IsLastAccessed);

QUIT;
