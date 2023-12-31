DROP TABLE D2L_ORGANIZATIONAL_UNIT_ANCESTOR;

CREATE TABLE D2L_ORGANIZATIONAL_UNIT_ANCESTOR (
  OrgUnitId NUMBER(10) NOT NULL,
  AncestorOrgUnitId NUMBER(10) NOT NULL
);

CREATE UNIQUE INDEX D2L_ORGANIZATIONAL_UNIT_ANCESTOR_PK ON D2L_ORGANIZATIONAL_UNIT_ANCESTOR (
  OrgUnitId,
  AncestorOrgUnitId
);

QUIT;
