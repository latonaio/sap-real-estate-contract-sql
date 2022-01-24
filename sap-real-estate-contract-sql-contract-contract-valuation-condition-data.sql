CREATE TABLE `sap_real_estate_contract_contract_valuation_condition_data`
(
  `InternalRealEstateNumber`        varchar(13) NOT NULL,
  `RETermNumber`                    varchar(4) NOT NULL,
  `ValidityStartEndDateValue`       varchar(16) NOT NULL,
  `REConditionType`                 varchar(4) NOT NULL,
  `REConditionValidityStartDate`    varchar(80) DEFAULT NULL,
  `REExtConditionPurpose`           varchar(4) DEFAULT NULL,
  `REStatusObjectCalculation`       varchar(22) DEFAULT NULL,
  `RETermName`                      varchar(60) DEFAULT NULL,
  `ValidityStartDate`               varchar(80) DEFAULT NULL,
  `ValidityEndDate`                 varchar(80) DEFAULT NULL,
  `REConditionValidityEndDate`      varchar(80) DEFAULT NULL,
  `REValuationCndnProperty`         varchar(1) DEFAULT NULL,
  `REValuationCndnConsdtn`          varchar(1) DEFAULT NULL,
  `REIsValuationCndnConsdtn`        tinyint(1) DEFAULT NULL,
  `REValuationCndnSharePercent`     varchar(9) DEFAULT NULL,
  `REValuationCndnShareAbsltAmt`    varchar(16) DEFAULT NULL,
  `REValuationCurrency`             varchar(3) DEFAULT NULL,
  `REValuationCndnStatus`           varchar(1) DEFAULT NULL,
  `REInfoText`                      varchar(100) DEFAULT NULL,
    PRIMARY KEY (`InternalRealEstateNumber`, `RETermNumber`, `ValidityStartEndDateValue`),
    CONSTRAINT `SAPRealEstateContractContractValuationConditionData_fk` FOREIGN KEY (`InternalRealEstateNumber`) REFERENCES `sap_real_estate_contract_contract_data` (`InternalRealEstateNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
