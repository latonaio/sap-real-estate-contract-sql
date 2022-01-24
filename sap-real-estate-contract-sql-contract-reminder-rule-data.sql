CREATE TABLE `sap_real_estate_contract_contract_reminder_rule_data`
(
  `InternalRealEstateNumber`    varchar(13) NOT NULL,
  `REReminderNumber`            varchar(4) NOT NULL,
  `REReminderRuleParamNumber`   varchar(2) DEFAULT NULL,
  `REReminderRule`              varchar(4) DEFAULT NULL,
  `REReminderReason`            varchar(4) DEFAULT NULL,
  `ValidityStartDate`           varchar(80) DEFAULT NULL,
  `ValidityEndDate`             varchar(80) DEFAULT NULL,
  `REReminderParamType`         varchar(1) DEFAULT NULL,
  `REReminderParamDate`         varchar(80) DEFAULT NULL,
  `REReminderParamNmbr`         varchar(4) DEFAULT NULL,
  `REReminderParamIsBoolean`    tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`InternalRealEstateNumber`, `REReminderNumber`, `REReminderRuleParamNumber`),
    CONSTRAINT `SAPRealEstateContractContractReminderRuleData_fk` FOREIGN KEY (`InternalRealEstateNumber`) REFERENCES `sap_real_estate_contract_contract_data` (`InternalRealEstateNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
