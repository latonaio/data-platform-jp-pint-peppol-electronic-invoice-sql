CREATE TABLE `data_platform_jp_pint_peppol_electronic_invoice_partner_address_data`
(
    `InvoiceNumber`           varchar(10) NOT NULL,
    `AddressID`               int(12) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalRegion`             varchar(3) DEFAULT NULL,
    `Country`                 varchar(3) DEFAULT NULL,
    `District`                varchar(6) DEFAULT NULL,
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Builiding`               varchar(100) DEFAULT NULL,
    `Floor`                   int(4) DEFAULT NULL,
    `Room`                    int(8) DEFAULT NULL,

    PRIMARY KEY (`InvoiceNumber`, `AddressID`),

    CONSTRAINT `DataPlatformJPPINTPeppolElectronicInvoiceAddressData_fk` FOREIGN KEY (`InvoiceNumber`) REFERENCES `data_platform_jp_pint_peppol_electronic_invoice_header_data` (`InvoiceNumber`),
    CONSTRAINT `DataPlatformJPPINTPeppolElectronicInvoiceAddressDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
