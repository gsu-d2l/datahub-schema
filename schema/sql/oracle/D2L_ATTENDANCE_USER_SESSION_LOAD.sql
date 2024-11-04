DROP TABLE D2L_ATTENDANCE_USER_SESSION_LOAD;

CREATE TABLE D2L_ATTENDANCE_USER_SESSION_LOAD (
  UserId NUMBER(10) NOT NULL,
  AttendanceSessionId NUMBER(20) NOT NULL,
  SchemeSymbolId NUMBER(20) DEFAULT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  LastModifiedBy NUMBER(10) DEFAULT NULL,
  IsDeleted NUMBER(1) DEFAULT NULL,
  Version NUMBER(20) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_ATTENDANCE_USER_SESSION_LOAD_PK ON D2L_ATTENDANCE_USER_SESSION_LOAD (
  UserId,
  AttendanceSessionId
);

QUIT;
