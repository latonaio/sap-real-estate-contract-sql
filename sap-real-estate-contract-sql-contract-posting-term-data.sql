CREATE TABLE `sap_real_estate_contract_contract_posting_term_data`
(
  `InternalRealEstateNumber`          varchar(13) NOT NULL,
  `RETermType`                        varchar(4) NOT NULL,
  `RETermNumber`                      varchar(4) NOT NULL,
  `ValidityStartEndDateValue`         varchar(16) NOT NULL,
  `ValidityStartDate`                 varchar(80) DEFAULT NULL,
  `ValidityEndDate`                   varchar(80) DEFAULT NULL,
  `RETermName`                        varchar(60) DEFAULT NULL,
  `PaymentMethod`                     varchar(1) DEFAULT NULL,
  `REPaymentMethodCreditMemo`         varchar(4) DEFAULT NULL,
  `PaymentBlockingReason`             varchar(1) DEFAULT NULL,
  `PaymentTerms`                      varchar(4) DEFAULT NULL,
  `HouseBank`                         varchar(5) DEFAULT NULL,
  `HouseBankAccount`                  varchar(5) DEFAULT NULL,
  `BankIdentification`                varchar(4) DEFAULT NULL,
  `RENoteToPayeeText`                 varchar(25) DEFAULT NULL,
  `DunningArea`                       varchar(2) DEFAULT NULL,
  `DunningKey`                        varchar(1) DEFAULT NULL,
  `DunningBlockingReason`             varchar(1) DEFAULT NULL,
  `REAcctDeterminationKey`            varchar(10) DEFAULT NULL,
  `RETaxType`                         varchar(4) DEFAULT NULL,
  `TaxGroup`                          varchar(20) DEFAULT NULL,
  `REIsConditionGrossAmount`          tinyint(1) DEFAULT NULL,
  `TaxCountry`                        varchar(3) DEFAULT NULL,
  `BusinessPartner`                   varchar(10) DEFAULT NULL,
  `REAccountingObject`                varchar(22) DEFAULT NULL,
  `TaxJurisdiction`                   varchar(15) DEFAULT NULL,
  `REIsConditionSplit`                tinyint(1) DEFAULT NULL,
  `RECurrencyTranslationRule`         varchar(20) DEFAULT NULL,
  `REIsPartnerBlocked`                tinyint(1) DEFAULT NULL,
  `SEPAMandate`                       varchar(35) DEFAULT NULL,
  `SEPAMandateCreditor`               varchar(35) DEFAULT NULL,
    PRIMARY KEY (`InternalRealEstateNumber`, `RETermType`, `RETermNumber`, `ValidityStartEndDateValue`),
    CONSTRAINT `SAPRealEstateContractContractPostingTermData_fk` FOREIGN KEY (`InternalRealEstateNumber`) REFERENCES `sap_real_estate_contract_contract_data` (`InternalRealEstateNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
