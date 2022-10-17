CREATE TABLE `data_platform_jp_pint_peppol_electronic_invoice_item_data`
(
    `InvoiceNumber`           		 	 	 							varchar(10) NOT NULL, 		-- <cbc> "F012345" / IBT-001 / A unique identification of the Invoice.
    `InvoiceLineIdentifier`												varchar(6) NOT NULL, 	    -- <cbc> "/IBT-126/ A unique identifier for the individual line within the Invoice.
	`InvoiceLineNote`													varchar(100) DEFAULT NULL, 	-- <cbc> "/IBT-127/ A textual note that gives unstructured information that is relevant to the Invoice line.
	`InvoiceLineDocumentIdentifier`										varchar(10) DEFAULT NULL, 	-- <cbc> "/IBT-188/ An identifiers for a document that the invoice line referes to.
	`DocumentTypeCode`													varchar(4) DEFAULT NULL, 	-- <cbc> "/IBT-189/ A code that qualifies the type of the document that is referenced.
	`InvoiceLineObjectIdentifier`										varchar(10) DEFAULT NULL, 	-- <cbc> "/IBT-128/ An identifier for an object on which the invoice line is based, given by the Seller.
--	`SchemeIdentifier`													varchar(10) DEFAULT NULL, 	-- <cbc> "/ibt-128-1/ If it may be not clear for the receiver what scheme is used for the identifier, a conditional scheme identifier should be used that shall be chosen from the UNTDID 1153 code list [6] entries.
	`InvoicedQuantity`													varchar(15) DEFAULT NULL, 	-- <cbc> "10" /IBT-129/ The quantity of items (goods or services) that is charged in the Invoice line.
	`InvoicedQuantityUnitOfMeasureCode`									varchar(15) DEFAULT NULL, 	-- <cbc> "/IBT-130/ The unit of measure that applies to the invoiced quantity.
	`InvoiceLineNetAmount`												varchar(13) DEFAULT NULL, 	-- <cbc> "/IBT-131/ The total amount of the Invoice line.
	`ReferencedPurchaseOrderLineReference`								varchar(10) DEFAULT NULL, 	-- <cbc> "1" /IBT-132/ An identifier for a referenced line within a purchase order, issued by the Buyer.
	`OrderReference`													varchar(10) DEFAULT NULL, 	-- <cbc> "123" /IBT-183/ An identifier for a referenced purchase order, issued by the Buyer.
--	`DespatchAdvicereference`											varchar(10) DEFAULT NULL, 	-- <cbc> "987" /IBT-184/ An identifier for a referenced despatch advice.
--	`InvoiceLineBuyerAccountingReference`								varchar(10) DEFAULT NULL, 	-- <cbc> "/IBT-133/ A textual value that specifies where to book the relevant data into the Buyer’s financial accounts.
	`InvoiceLinePeriodStartDate`										varchar(80) DEFAULT NULL, 	-- <cbc> "2018-11-01" /IBT-134/ The date when the Invoice period for this Invoice line starts.
	`InvoiceLinePeriodEndDate`											varchar(80) DEFAULT NULL, 	-- <cbc> "2018-11-30" /IBT-135/ The date when the Invoice period for this Invoice line ends.
--	`InvoiceLineAllowanceAmount`										varchar(13) DEFAULT NULL, 	-- <cbc> "0.00" /IBT-136/ The amount of an allowance, without TAX.
--	`InvoiceLineAllowanceBaseAmount`									varchar(13) DEFAULT NULL, 	-- <cbc> "/IBT-137/ The base amount that may be used, in conjunction with the Invoice line allowance percentage, to calculate the Invoice line allowance amount.
--	`InvoiceLineAllowancePercentage`									varchar(6) DEFAULT NULL, 	-- <cbc> "7" /IBT-138/ The percentage that may be used, in conjunction with the Invoice line allowance base amount, to calculate the Invoice line allowance amount.
--	`InvoiceLineAllowanceReason`										varchar(100) DEFAULT NULL, 	-- <cbc> "--" /IBT-139/ The reason for the Invoice line allowance, expressed as text.
--	`InvoiceLineAllowanceReasonCode`									varchar(3) DEFAULT NULL, 	-- <cbc> "/IBT-140/ The reason for the Invoice line allowance, expressed as a code.
--	`InvoiceLineChargeAmount`											varchar(13) DEFAULT NULL, 	-- <cbc> "/IBT-141/ The amount of a charge, without TAX.
--	`InvoiceLineChargeBaseAmount`										varchar(13) DEFAULT NULL, 	-- <cbc> "90.00" /IBT-142/ The base amount that may be used, in conjunction with the Invoice line charge percentage, to calculate the Invoice line charge amount.
--	`InvoiceLineChargePercentage`										varchar(6) DEFAULT NULL, 	-- <cbc> "7" /IBT-143/ The percentage that may be used, in conjunction with the Invoice line charge base amount, to calculate the Invoice line charge amount.
--	`InvoiceLineChargeReason`											varchar(100) DEFAULT NULL, 	-- <cbc> "--™ /IBT-144/ The reason for the Invoice line charge, expressed as text.
--	`InvoiceLineChargeReasonCode`										varchar(3) DEFAULT NULL, 	-- <cbc> "/IBT-145/ The reason for the Invoice line charge, expressed as a code.
	`ItemNetPrice`														varchar(13) DEFAULT NULL, 	-- <cbc> "/IBT-146/ The price of an item, exclusive of TAX, after subtracting item price discount.
--	`ItemPriceDiscount`													varchar(13) DEFAULT NULL, 	-- <cbc> "/IBT-147/ The total discount subtracted from the Item gross price to calculate the Item net price.
	`ItemGrossPrice`													varchar(13) DEFAULT NULL, 	-- <cbc> "/IBT-148/ The unit price, exclusive of TAX, before subtracting Item price discount.
	`ItemPriceBaseQuantity`												varchar(15) DEFAULT NULL, 	-- <cbc> "1" /IBT-149/ The number of item units to which the price applies.
	`ItemPriceBaseQuantityUnitOfMeasureCode`							varchar(3) DEFAULT NULL, 	-- <cbc> "/IBT-150/ The unit of measure that applies to the Item price base quantity.
	`InvoicedItemTAXCategoryCode`										varchar(2) DEFAULT NULL, 	-- <cbc> "SR" /IBT-151/ The TAX category code for the invoiced item.
--	`InvoicedItemTAXRate`												varchar(6) DEFAULT NULL, 	-- <cbc> "7" /IBT-152/ The TAX rate, represented as percentage that applies to the invoiced item.
--	`TAXExemptionReasonText`											varchar(100) DEFAULT NULL, 	-- <cbc> "--" /IBT-185/ A textual statement of the reason why the line amount is exempted from TAX or why no TAX is being charged
--	`TAXExemptionReasonCode`											varchar(3) DEFAULT NULL, 	-- <cbc> "/IBT-186/ A coded statement of the reason for why the line amount is exempted from TAX.
--	`UnitTAX`															varchar(13) DEFAULT NULL, 	-- <cbc> "/IBT-166/ A TAX amount that applied to each item unit.
--	`TaxScheme`															varchar(3) DEFAULT NULL, 	-- <cbc> "/IBT-167/ A code indicating the type of tax
	`ItemName`															varchar(100) DEFAULT NULL, 	-- <cbc> "Yashica MG2" /IBT-153/ A name for an item.
	`ItemDescription`													varchar(100) DEFAULT NULL, 	-- <cbc> "--" /IBT-154/ A description for an item.
--	`ItemSellersIdentifier`												varchar(10) DEFAULT NULL, 	-- <cbc> "0160" /IBT-155/ An identifier, assigned by the Seller, for the item.
--	`ItemBuyersIdentifier`												varchar(10) DEFAULT NULL, 	-- <cbc> "0160" /IBT-156/ An identifier, assigned by the Buyer, for the item.
--	`ItemStandardIdentifier`											varchar(10) DEFAULT NULL, 	-- <cbc> "0160" /IBT-157/ An item identifier based on a registered scheme.
--	`SchemeIdentifier`													varchar(10) DEFAULT NULL, 	-- <cbc> "/ibt-157-1/ The identification scheme shall be identified from the entries of the list published by the ISO/IEC 6523 maintenance agency.
--	`ItemClassificationIdentifier`										varchar(10) DEFAULT NULL, 	-- <cbc> "0160" /IBT-158/ A code for classifying the item by its type or nature.
--	`SchemeIdentifier`													varchar(10) DEFAULT NULL, 	-- <cbc> "/ibt-158-1/ The identification scheme shall be chosen from the entries in UNTDID 7143 [6].
--	`SchemeVersionIdentifier`											varchar(10) DEFAULT NULL, 	-- <cbc> "/ibt-158-2/ 
	`ItemCountryOfOrigin`												varchar(3) DEFAULT NULL, 	-- <cbc> "CH" /IBT-159/ The code identifying the country from which the item originates.
--	`ItemAttributeName`													varchar(100) DEFAULT NULL, 	-- <cbc> "Colour" /IBT-160/ The name of the attribute or property of the item.
--	`ItemAttributeValue`												varchar(13) DEFAULT NULL, 	-- <cbc> "Black" /IBT-161/ The value of the attribute or property of the item.
   PRIMARY KEY (`InvoiceNumber`, `InvoiceLineIdentifier`),
   CONSTRAINT `DataPlatformJPPINTPeppolElectronicInvoiceItemData_fk` FOREIGN KEY (`InvoiceNumber`) REFERENCES `data_platform_jp_pint_peppol_electronic_invoice_header_data` (`InvoiceNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
