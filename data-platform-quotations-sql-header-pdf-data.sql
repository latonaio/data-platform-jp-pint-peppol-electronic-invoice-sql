CREATE TABLE `data_platform_quotations_header_pdf_data`       -- 新規追加
(
--`BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `Quotation`                      int(16) NOT NULL,          -- 新規追加
  `DocType`                        varchar(20) NOT NULL,      -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `DocID`                          varchar(100) NOT NULL,     -- 新規追加
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,      -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
    PRIMARY KEY (`Quotation`, `DocType`, `DocVersionID`, `DocID`),
    CONSTRAINT `DataPlatformQuotationsHeaderPDFData_fk` FOREIGN KEY (`Quotation`) REFERENCES `data_platform_quotations_header_data` (`Quotation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
