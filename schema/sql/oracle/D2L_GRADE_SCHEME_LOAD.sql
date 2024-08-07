DROP TABLE D2L_GRADE_SCHEME_LOAD;

CREATE TABLE D2L_GRADE_SCHEME_LOAD (
  GradeSchemeId NUMBER(20) NOT NULL,
  OrgUnitId NUMBER(10) DEFAULT NULL,
  SchemeName NVARCHAR2(256) DEFAULT NULL,
  DeletedDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  Version NUMBER(20) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_GRADE_SCHEME_LOAD_PK ON D2L_GRADE_SCHEME_LOAD (
  GradeSchemeId
);

QUIT;
