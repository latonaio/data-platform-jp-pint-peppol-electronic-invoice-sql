CREATE TABLE `data_platform_quotations_header_data`
(
--  `BusinessPartner`                 int(10) NOT NULL,          -- 新規追加
    `Quotation`                       int(16) NOT NULL,
--  `QuotationType`                   varchar(4) DEFAULT NULL,
    `QuotationDate`                   date DEFAULT NULL,
--  `PurchaseOrganization`            varchar(4) DEFAULT NULL,
--  `SalesOrganization`               varchar(4) DEFAULT NULL,
    `DistributionChannel`             varchar(2) DEFAULT NULL,
    `BusinessArea`                    varchar(4) DEFAULT NULL,
    `District`                        varchar(6) DEFAULT NULL,
--  `Customer`                        int(10) DEFAULT NULL,
--  `Supplier`                        int(10) DEFAULT NULL,
--  `CustomerLanguage`                varchar(2) DEFAULT NULL,   -- 新規追加
--  `SupplierLanguage`                varchar(2) DEFAULT NULL,   -- 新規追加
    `CreationDate`                    date DEFAULT NULL,
    `LastChangeDate`                  date DEFAULT NULL,
--  `SellerExternalDocumentID`        varchar(40) DEFAULT NULL,  -- 新規追加
--  `BuyerExternalDocumentID`         varchar(40) DEFAULT NULL,  -- 新規追加
    `ContractType`                    varchar(4) DEFAULT NULL,   -- 新規追加
    `ValidityStartDate`               date DEFAULT NULL,         -- 新規追加
    `ValidityEndDate`                 date DEFAULT NULL,         -- 新規追加
    `InvoiceScheduleStartDate`        date DEFAULT NULL,         -- 新規追加
    `InvoiceScheduleEndDate`          date DEFAULT NULL,         -- 新規追加
    `TotalNetAmount`                  float(13) DEFAULT NULL,
    `TransactionCurrency`             varchar(5) DEFAULT NULL,
--  `BussinessParnterCurrency`        varchar(5) DEFAULT NULL,   -- 新規追加
    `PricingDate`                     date DEFAULT NULL,
    `RequestedDeliveryDate`           date DEFAULT NULL,
    `BindingPeriodValidityStartDate`  date DEFAULT NULL,
    `BindingPeriodValidityEndDate`    date DEFAULT NULL,
    `OrderProbabilityInPercent`       float(6) DEFAULT NULL,     -- 名称変更
    `ExpectedOrderNetAmount`          float(13) DEFAULT NULL,
    `Incoterms`                       varchar(3) DEFAULT NULL,   -- 名称変更
    `PaymentTerms`                    varchar(4) DEFAULT NULL,
    `PaymentMethod`                   varchar(1) DEFAULT NULL,
    `TaxClassification`               varchar(1) DEFAULT NULL,
    `ReferenceInquiry`                int(16) DEFAULT NULL,
    PRIMARY KEY (`Quotation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
