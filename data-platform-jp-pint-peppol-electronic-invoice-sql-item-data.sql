CREATE TABLE `data_platform_jp_pint_peppol_electronic_invoice_item_data`
(
    `InvoiceNumber`           		 	 	 							varchar(10) NOT NULL, 		-- <cbc> "F012345" / IBT-001 / A unique identification of the Invoice.
    `InvoiceLineIdentifier`												varchar(6) NOT NULL, 	    -- <cbc> "/IBT-126/ A unique identifier for the individual line within the Invoice.
	`InvoiceLineNote`													varchar(100) DEFAULT NULL, 	-- <cbc> "/IBT-127/ A textual note that gives unstructured information that is relevant to the Invoice line.
	`ItemStandardIdentifier`                                            varchar(18) DEFAULT NULL, 	
	`ItemClassificationIdentifier`                                      varchar(8) DEFAULT NULL,
	`InvoiceLineDocumentIdentifier`										varchar(10) DEFAULT NULL, 	-- <cbc> "/IBT-188/ An identifiers for a document that the invoice line referes to.
	`DocumentTypeCode`													varchar(4) DEFAULT NULL, 	-- <cbc> "/IBT-189/ A code that qualifies the type of the document that is referenced.
	`InvoiceLineObjectIdentifier`										varchar(10) DEFAULT NULL, 	-- <cbc> "/IBT-128/ An identifier for an object on which the invoice line is based, given by the Seller.
	`InvoicedQuantity`													varchar(15) DEFAULT NULL, 	-- <cbc> "10" /IBT-129/ The quantity of items (goods or services) that is charged in the Invoice line.
	`InvoicedQuantityUnitOfMeasureCode`									varchar(15) DEFAULT NULL, 	-- <cbc> "/IBT-130/ The unit of measure that applies to the invoiced quantity.
	`InvoiceLineNetAmount`												varchar(13) DEFAULT NULL, 	-- <cbc> "/IBT-131/ The total amount of the Invoice line.
	`ReferencedPurchaseOrderLineReference`								varchar(10) DEFAULT NULL, 	-- <cbc> "1" /IBT-132/ An identifier for a referenced line within a purchase order, issued by the Buyer.
	`OrderReference`													varchar(10) DEFAULT NULL, 	-- <cbc> "123" /IBT-183/ An identifier for a referenced purchase order, issued by the Buyer.
	`InvoiceLinePeriodStartDate`										varchar(80) DEFAULT NULL, 	-- <cbc> "2018-11-01" /IBT-134/ The date when the Invoice period for this Invoice line starts.
	`InvoiceLinePeriodEndDate`											varchar(80) DEFAULT NULL, 	-- <cbc> "2018-11-30" /IBT-135/ The date when the Invoice period for this Invoice line ends.
	`ItemNetPrice`														varchar(13) DEFAULT NULL, 	-- <cbc> "/IBT-146/ The price of an item, exclusive of TAX, after subtracting item price discount.
	`ItemGrossPrice`													varchar(13) DEFAULT NULL, 	-- <cbc> "/IBT-148/ The unit price, exclusive of TAX, before subtracting Item price discount.
	`ItemPriceBaseQuantity`												varchar(15) DEFAULT NULL, 	-- <cbc> "1" /IBT-149/ The number of item units to which the price applies.
	`ItemPriceBaseQuantityUnitOfMeasureCode`							varchar(3) DEFAULT NULL, 	-- <cbc> "/IBT-150/ The unit of measure that applies to the Item price base quantity.
	`InvoicedItemTAXCategoryCode`										varchar(2) DEFAULT NULL, 	-- <cbc> "SR" /IBT-151/ The TAX category code for the invoiced item.
	`ItemName`															varchar(100) DEFAULT NULL, 	-- <cbc> "Yashica MG2" /IBT-153/ A name for an item.
	`ItemDescription`													varchar(100) DEFAULT NULL, 	-- <cbc> "--" /IBT-154/ A description for an item.
	`ItemCountryOfOrigin`												varchar(3) DEFAULT NULL, 	-- <cbc> "CH" /IBT-159/ The code identifying the country from which the item originates.
   PRIMARY KEY (`InvoiceNumber`, `InvoiceLineIdentifier`),
   CONSTRAINT `DataPlatformJPPINTPeppolElectronicInvoiceItemData_fk` FOREIGN KEY (`InvoiceNumber`) REFERENCES `data_platform_jp_pint_peppol_electronic_invoice_header_data` (`InvoiceNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
