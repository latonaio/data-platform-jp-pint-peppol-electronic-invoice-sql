CREATE TABLE `data_platform_quotations_header_partner_data`
(
--`BusinessPartner`                 int(10) NOT NULL,           -- 新規追加
  `Quotation`                       int(16) NOT NULL,           -- 名称変更
  `PartnerFunction`                 varchar(4) NOT NULL,
  `BusinessPartner`                 int(12) DEFAULT NULL,       -- 名称変更
  `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,  -- 新規追加
  `BusinessPartnerName`             varchar(100) DEFAULT NULL,  -- 新規追加
  `QuotationType`                   varchar(2) DEFAULT NULL,    -- 新規追加
  `Organization`                    varchar(4) DEFAULT NULL,    -- 新規追加
  `Language`                        varchar(2) DEFAULT NULL,    -- 新規追加
  `Currency`                        varchar(5) DEFAULT NULL,    -- 新規追加
  `ExternalDocumentID`              varchar(40) DEFAULT NULL,   -- 新規追加
  `AddressID`                       int(12) DEFAULT NULL,       -- 新規追加
    PRIMARY KEY (`Quotation`, `PartnerFunction`),
    CONSTRAINT `DataPlatformQuotationsHeaderPartnerData_fk` FOREIGN KEY (`Quotation`) REFERENCES `data_platform_quotations_header_data` (`Quotation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
