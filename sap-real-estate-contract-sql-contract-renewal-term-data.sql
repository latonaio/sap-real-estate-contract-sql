CREATE TABLE `sap_real_estate_contract_contract_renewal_term_data`
(
  `InternalRealEstateNumber`        varchar(13) NOT NULL,
  `RETermType`                      varchar(4) NOT NULL,
  `RETermNumber`                    varchar(4) NOT NULL,
  `RERenewalType`                   varchar(1) NOT NULL,
  `RERenewalSequenceNumber`         varchar(4) NOT NULL,
  `RERenewalRuleType`               varchar(1) DEFAULT NULL,
  `RETermName`                      varchar(60) DEFAULT NULL,
  `RERenewalRule`                   varchar(4) DEFAULT NULL,
  `REAutomaticRenewalType`          varchar(1) DEFAULT NULL,
  `RENumberOfRenewals`              varchar(2) DEFAULT NULL,
  `RERenewalPeriodInYears`          varchar(2) DEFAULT NULL,
  `RERenewalPeriodInMonths`         varchar(2) DEFAULT NULL,
  `RERenewalPeriodInDays`           varchar(2) DEFAULT NULL,
  `RERenewalRoundingDateRule`       varchar(1) DEFAULT NULL,
  `RENotificationPeriodInYears`     varchar(2) DEFAULT NULL,
  `RENotificationPeriodInMonths`    varchar(2) DEFAULT NULL,
  `RENotificationPeriodInWeeks`     varchar(2) DEFAULT NULL,
  `RENotificationPeriodInDays`      varchar(2) DEFAULT NULL,
  `RENotificationRoundingDateRule`  varchar(1) DEFAULT NULL,
    PRIMARY KEY (`InternalRealEstateNumber`, `RETermType`, `RETermNumber`, `RERenewalType`, `RERenewalSequenceNumber`),
    CONSTRAINT `SAPRealEstateContractContractRenewalTermData_fk` FOREIGN KEY (`InternalRealEstateNumber`) REFERENCES `sap_real_estate_contract_contract_data` (`InternalRealEstateNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
