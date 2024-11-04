DROP TABLE D2L_ATTENDANCE_SESSION;

CREATE TABLE D2L_ATTENDANCE_SESSION (
  AttendanceSessionId NUMBER(20) NOT NULL,
  AttendanceRegisterId NUMBER(20) DEFAULT NULL,
  Name NVARCHAR2(256) DEFAULT NULL,
  Description NVARCHAR2(512) DEFAULT NULL,
  SortOrder NUMBER(10) DEFAULT NULL,
  Version NUMBER(20) DEFAULT NULL,
  DateDeleted TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  DeletedBy NUMBER(10) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_ATTENDANCE_SESSION_PK ON D2L_ATTENDANCE_SESSION (
  AttendanceSessionId
);

QUIT;
