DROP TABLE IF EXISTS `LTILinkShared_LOAD`;

CREATE TABLE `LTILinkShared_LOAD` (
  `OuAvailabilitySetId` BIGINT NOT NULL,
  `OrgUnitId` INT NOT NULL,
  `SharingType` VARCHAR(9) NOT NULL,
  `DescendantTypeId` INT DEFAULT NULL,
  `LastModified` DATETIME DEFAULT NULL,
  UNIQUE KEY (`OuAvailabilitySetId`, `OrgUnitId`, `SharingType`, `DescendantTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
