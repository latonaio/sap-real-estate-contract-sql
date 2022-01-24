CREATE TABLE `sap_real_estate_contract_contract_reminder_date_data`
(
  `InternalRealEstateNumber`    varchar(13) NOT NULL,
  `REReminderNumber`            varchar(4) NOT NULL,
  `REReminderDate`              varchar(80) DEFAULT NULL,
  `REReminderRule`              varchar(4) DEFAULT NULL,
  `REReminderReason`            varchar(4) DEFAULT NULL,
  `CreationDate`                varchar(80) DEFAULT NULL,
  `CreationTime`                varchar(80) DEFAULT NULL,
  `RESourceOfCreation`          varchar(10) DEFAULT NULL,
  `LastChangeDate`              varchar(80) DEFAULT NULL,
  `LastChangeTime`              varchar(80) DEFAULT NULL,
  `RESourceOfChange`            varchar(10) DEFAULT NULL,
  `Responsible`                 varchar(12) DEFAULT NULL,
  `REReminderWrkflwDate`        varchar(80) DEFAULT NULL,
  `REReminderIsDone`            tinyint(1) DEFAULT NULL,
  `REReminderIsFix`             tinyint(1) DEFAULT NULL,
  `REReminderIsWrkflwSend`      tinyint(1) DEFAULT NULL,
  `TextObjectKey`               varchar(70) DEFAULT NULL,
  `REReminderInfoText`          varchar(60) DEFAULT NULL,
    PRIMARY KEY (`InternalRealEstateNumber`, `REReminderNumber`),
    CONSTRAINT `SAPRealEstateContractContractReminderDateData_fk` FOREIGN KEY (`InternalRealEstateNumber`) REFERENCES `sap_real_estate_contract_contract_data` (`InternalRealEstateNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
