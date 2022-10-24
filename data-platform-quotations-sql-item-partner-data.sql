CREATE TABLE `data_platform_quotations_item_partner_data`
(
  `BusinessPartner`                     int(10) NOT NULL,           -- 新規追加
  `Quotation`                           int(10) NOT NULL,           -- 名称変更
  `QuotationItem`                       int(6) NOT NULL,            -- 名称変更
  `PartnerFunction`                     varchar(2) NOT NULL,
  `PartnerFunctionBusinessPartner`      int(10) DEFAULT NULL,
  `BusinessPartnerFullName`             varchar(200) DEFAULT NULL,  -- 新規追加
  `BusinessPartnerName`                 varchar(100) DEFAULT NULL,  -- 新規追加
  `AddressID`                           int(10) DEFAULT NULL,       -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `Quotation`, `QuotationItem`, `PartnerFunction`),
    CONSTRAINT `DataPlatformQuotationsItemPartnerData_fk` FOREIGN KEY (`BusinessPartner`, `Quotation`, `QuotationItem`) REFERENCES `data_platform_quotations_item_data` (`BusinessPartner`, `Quotation`, `QuotationItem`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
