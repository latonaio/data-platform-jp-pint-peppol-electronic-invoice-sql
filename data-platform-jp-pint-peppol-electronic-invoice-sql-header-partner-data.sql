CREATE TABLE `data_platform_jp_pint_peppol_electronic_invoice_header_partner_data`
(
    `InvoiceNumber`               varchar(10) NOT NULL,      -- <cbc> "F012345"
    `PartnerFunction`             varchar(6) NOT NULL,       -- <na> "BL" Partner Function にマッピング済
    `PartnerID`                   varchar(10) NOT NULL,      -- <cbc> "INV0001"
    `PartnerName`                 varchar(100) DEFAULT NULL, -- <cbc> "IMDA1-Infocomm Media Devt Authority"
    `AddressID`                   int(12) DEFAULT NULL,      -- <na> "27518"

    PRIMARY KEY (`InvoiceNumber`, `PartnerFunction`, `PartnerID`),

    CONSTRAINT `DataPlatformJPPINTPeppolElectronicInvoiceHeaderPartnerData_fk` FOREIGN KEY (`InvoiceNumber`) REFERENCES `data_platform_jp_pint_peppol_electronic_invoice_header_data` (`InvoiceNumber`),
    CONSTRAINT `DataPlatformJPPINTPeppolElectronicInvoiceHeaderPartnerDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
    CONSTRAINT `DataPlatformJPPINTPeppolElectronicInvoiceHeaderPartnerDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
