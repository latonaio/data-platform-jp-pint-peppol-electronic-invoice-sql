CREATE TABLE `data_platform_quotations_header_partner_plant_data`  -- 新規追加
(
--`BusinessPartner`                  int(10) NOT NULL,         -- 新規追加
  `Quotation`                        int(16) NOT NULL,         -- 新規追加
  `PartnerFunction`                  varchar(4) NOT NULL,      -- 新規追加
  `BusinessPartner`                  int(12) NOT NULL,         -- 新規追加
  `Plant`                            varchar(4) DEFAULT NULL,  -- 新規追加
    PRIMARY KEY (`Quotation`, `PartnerFunction`, `BusinessPartner`),
    CONSTRAINT `DataPlatformQuotationsHeaderPartnerPlantData_fk` FOREIGN KEY (`Quotation`, `PartnerFunction`) REFERENCES `data_platform_quotations_header_partner_data` (`Quotation`, `PartnerFunction`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
