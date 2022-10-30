CREATE TABLE `data_platform_jp_pint_peppol_electronic_invoice_item_partner_data`
(
    `InvoiceNumber`               varchar(10) NOT NULL,      -- <cbc> "F012345"
    `InvoiceLineIdentifier`       varchar(6) NOT NULL,       -- <cbc/cac:InvoiceLine> "1"
    `PartnerFunction`             varchar(2) NOT NULL,       -- <na> "BL" Partner Function にマッピング済
    `PartnerID`                   varchar(10) NOT NULL,      -- <cbc> "INV0001"
    `PartnerName`                 varchar(100) DEFAULT NULL, -- <cbc> "IMDA1-Infocomm Media Devt Authority"
    `AddressID`                   int(12) DEFAULT NULL,      -- <na> "27518"
    PRIMARY KEY (`InvoiceNumber`, `InvoiceLineIdentifier`, `PartnerFunction`, `PartnerID`),
    CONSTRAINT `DataPlatformJPPINTPeppolElectronicInvoiceItemPartnerData_fk` FOREIGN KEY (`InvoiceNumber`, `InvoiceLineIdentifier`) REFERENCES `data_platform_jp_pint_peppol_electronic_invoice_item_data` (`InvoiceNumber`, `InvoiceLineIdentifier`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
