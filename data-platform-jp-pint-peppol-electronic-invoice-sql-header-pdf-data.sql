CREATE TABLE `data_platform_jp_pint_peppol_electronic_invoice_header_pdf_data` -- 新規追加
(
  `InvoiceNumber`                  varchar(10) NOT NULL,      -- <cbc> "F012345"
  `DocType`                        varchar(20) NOT NULL,      -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `DocID`                          varchar(100) NOT NULL,     -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
    PRIMARY KEY (`InvoiceNumber`, `DocType`, `DocVersionID`, `DocID`),
    CONSTRAINT `DataPlatformJPPINTPeppolElectronicInvoiceHeaderPDFData_fk` FOREIGN KEY (`InvoiceNumber`) REFERENCES `data_platform_jp_pint_peppol_electronic_invoice_header_data` (`InvoiceNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
