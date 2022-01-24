CREATE TABLE `sap_real_estate_contract_contract_assignment_term_data`
(
  `InternalRealEstateNumber`          varchar(13) NOT NULL,
  `RETermType`                        varchar(4) NOT NULL,
  `RETermNumber`                      varchar(4) NOT NULL,
  `ValidityStartEndDateValue`         varchar(16) NOT NULL,
  `ValidityStartDate`                 varchar(80) DEFAULT NULL,
  `ValidityEndDate`                   varchar(80) DEFAULT NULL,
  `RETermName`                        varchar(60) DEFAULT NULL,
  `BusinessArea`                      varchar(4) DEFAULT NULL,
  `ProfitCenter`                      varchar(10) DEFAULT NULL,
  `REStatusObject`                    varchar(22) DEFAULT NULL,
  `TaxJurisdiction`                   varchar(15) DEFAULT NULL,
  `Fund`                              varchar(10) DEFAULT NULL,
  `FundsCenter`                       varchar(16) DEFAULT NULL,
  `CommitmentItem`                    varchar(24) DEFAULT NULL,
  `FunctionalArea`                    varchar(16) DEFAULT NULL,
  `BudgetPeriod`                      varchar(10) DEFAULT NULL,
  `ControllingArea`                   varchar(4) DEFAULT NULL,
  `TaxCalculationProcedure`           varchar(6) DEFAULT NULL,
  `FinancialManagementArea`           varchar(4) DEFAULT NULL,
    PRIMARY KEY (`InternalRealEstateNumber`, `RETermType`, `RETermNumber`, `ValidityStartEndDateValue`),
    CONSTRAINT `SAPRealEstateContractContractAssignmentTermData_fk` FOREIGN KEY (`InternalRealEstateNumber`) REFERENCES `sap_real_estate_contract_contract_data` (`InternalRealEstateNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
