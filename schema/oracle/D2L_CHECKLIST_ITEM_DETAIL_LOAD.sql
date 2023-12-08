DROP TABLE D2L_CHECKLIST_ITEM_DETAIL_LOAD;

CREATE TABLE D2L_CHECKLIST_ITEM_DETAIL_LOAD (
  ItemId NUMBER(20) NOT NULL,
  CategoryId NUMBER(20) DEFAULT NULL,
  Name NVARCHAR2(1024) DEFAULT NULL,
  Description NVARCHAR2(2000) DEFAULT NULL,
  DescriptionIsHtml NUMBER(1) DEFAULT NULL,
  DueDate TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  ScheduleId NUMBER(10) DEFAULT NULL,
  SortOrder NUMBER(10) DEFAULT NULL,
  IsAutoChecked NUMBER(1) DEFAULT NULL,
  LastModifiedUtc TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  DateDeleted TIMESTAMP WITH LOCAL TIME ZONE DEFAULT NULL,
  DeletedBy NUMBER(10) DEFAULT NULL,
  Version NUMBER(20) DEFAULT NULL
);

CREATE UNIQUE INDEX D2L_CHECKLIST_ITEM_DETAIL_LOAD_PK ON D2L_CHECKLIST_ITEM_DETAIL_LOAD (
  ItemId
);

QUIT;
