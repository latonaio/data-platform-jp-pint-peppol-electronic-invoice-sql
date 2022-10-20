CREATE TABLE `data_platform_peppol_electronic_invoice_partner_address_data`
(
    `BusinessPartner`         int(10) NOT NULL,           -- 新規追加
    `ID`                      int(10) NOT NULL,           -- 新規追加
    `AddressID`               int(10) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalRegion`             varchar(3) DEFAULT NULL,    -- 名称変更
    `Country`                 varchar(3) DEFAULT NULL,
    `District`                varchar(6) DEFAULT NULL,    -- 新規追加
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Builiding`               varchar(100) DEFAULT NULL,  -- 新規追加
    `Floor`                   int(4) DEFAULT NULL,        -- 新規追加
    `Room`                    int(8) DEFAULT NULL,        -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `ID`, `AddressID`),
    CONSTRAINT `DataPlatformPeppolElectronicInvoicePartnerAddressData_fk` FOREIGN KEY (`BusinessPartner`, `ID`) REFERENCES `data_platform_peppol_electronic_invoice_header_data` (`BusinessPartner`, `ID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
