CREATE TABLE `sap_real_estate_contract_contract_object_assignment_data`
(
  `InternalRealEstateNumber`          varchar(13) NOT NULL,
  `REStatusObjectSource`              varchar(22) DEFAULT NULL,
  `REObjectAssignmentType`            varchar(2) DEFAULT NULL,
  `REStatusObjectTarget`              varchar(22) DEFAULT NULL,
  `ValidityStartEndDateValue`         varchar(16) DEFAULT NULL,
  `ValidityStartDate`                 varchar(80) DEFAULT NULL,
  `ValidityEndDate`                   varchar(80) DEFAULT NULL,
  `REObjectTypeTarget`                varchar(2) DEFAULT NULL,
  `REOnlyInfoAssgmt`                  tinyint(1) DEFAULT NULL,
  `REStatusObjectSourceIsArchived`    tinyint(1) DEFAULT NULL,
  `REGenerationType`                  varchar(2) DEFAULT NULL,
  `REIsMainAsset`                     tinyint(1) DEFAULT NULL,
  `REAssignmentHasMultiple`           tinyint(1) DEFAULT NULL,
  `REObjectPossessionStartDate`       varchar(80) DEFAULT NULL,
  `REObjectPossessionEndDate`         varchar(80) DEFAULT NULL,
  `REGroupNumber`                     varchar(4) DEFAULT NULL,
  `REObjectGroupName`                 varchar(60) DEFAULT NULL,
  `REContractSubjectNumber`           varchar(4) DEFAULT NULL,
  `REContractSubjectDescription`      varchar(60) DEFAULT NULL,
  `REContractSubjectClass`            varchar(4) DEFAULT NULL,
  `REContractSubjectType`             varchar(6) DEFAULT NULL,
  `ExternalID`                        varchar(100) DEFAULT NULL,
  `REAccountingObject`                varchar(22) DEFAULT NULL,
  `REAccountingObjectType`            varchar(4) DEFAULT NULL,
    PRIMARY KEY (`InternalRealEstateNumber`, `REStatusObjectSource`, `REObjectAssignmentType`, `REStatusObjectTarget`, `ValidityStartEndDateValue`),
    CONSTRAINT `SAPRealEstateContractContractObjectAssignmentData_fk` FOREIGN KEY (`InternalRealEstateNumber`) REFERENCES `sap_real_estate_contract_contract_data` (`InternalRealEstateNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
