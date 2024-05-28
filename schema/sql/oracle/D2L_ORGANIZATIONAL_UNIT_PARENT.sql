DROP TABLE D2L_ORGANIZATIONAL_UNIT_PARENT;

CREATE TABLE D2L_ORGANIZATIONAL_UNIT_PARENT (
  OrgUnitId NUMBER(10) NOT NULL,
  ParentOrgUnitId NUMBER(10) NOT NULL,
  RowVersion NUMBER(20) DEFAULT NULL,
  DateDeleted TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_ORGANIZATIONAL_UNIT_PARENT_PK ON D2L_ORGANIZATIONAL_UNIT_PARENT (OrgUnitId, ParentOrgUnitId);
CREATE INDEX IDX_D2L_ORGANIZATIONAL_UNIT_PARENT_ORGUNITID ON D2L_ORGANIZATIONAL_UNIT_PARENT (OrgUnitId);
CREATE INDEX IDX_D2L_ORGANIZATIONAL_UNIT_PARENT_PARENTORGUNITID ON D2L_ORGANIZATIONAL_UNIT_PARENT (ParentOrgUnitId);

QUIT;
