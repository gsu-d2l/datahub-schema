DROP TABLE D2L_LTI_LINK_SHARED;

CREATE TABLE D2L_LTI_LINK_SHARED (
  OuAvailabilitySetId NUMBER(20) NOT NULL,
  OrgUnitId NUMBER(10) NOT NULL,
  SharingType VARCHAR2(18 CHAR) NOT NULL,
  DescendantTypeId NUMBER(10) NOT NULL,
  LastModified TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_LTI_LINK_SHARED_PK ON D2L_LTI_LINK_SHARED (
  OuAvailabilitySetId,
  OrgUnitId,
  SharingType,
  DescendantTypeId
);

QUIT;
