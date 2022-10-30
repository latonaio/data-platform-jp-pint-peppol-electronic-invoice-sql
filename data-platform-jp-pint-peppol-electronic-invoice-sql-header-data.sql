CREATE TABLE `data_platform_jp_pint_peppol_electronic_invoice_header_data`
(
    `InvoiceNumber`           		 	 	 							varchar(10) NOT NULL, 		-- <cbc> "F012345" / IBT-001 / A unique identification of the Invoice.
	`InvoiceIssueDate`             	 		 							varchar(80) DEFAULT NULL, 	-- <cbc> "2018-12-01" / IBT-002 / The date when the Invoice was issued.
	`InvoiceIssueTime`             		     							varchar(80) DEFAULT NULL, 	-- <cbc> "HH:MM:SS" / IBT-168 / The time of day when an invoice was issued
	`InvoiceTypeCode`              		    	  						varchar(3) DEFAULT NULL, 	-- <cbc> "380" / IBT-003 / A code specifying the functional type of the Invoice.
	`InvoiceCurrencyCode`          	         							varchar(3) DEFAULT NULL, 	-- <cbc> "SGD" / IBT-005 / The currency in which all Invoice amounts are given, except for the Total TAX amount in accounting currency.
	`TaxAccountingCurrency` 				 							varchar(5) DEFAULT NULL, 	-- <cbc> " / IBT-006 / The currency used for TAX accounting and reporting purposes as accepted or required in the country of the Seller.
	`TAXPointDate`              			 							varchar(80) DEFAULT NULL, 	-- <cbc> " / IBT-007 / The date when the TAX becomes accountable for the Seller and for the Buyer in so far as that date can be determined and differs from the date of issue of the invoice, according to the TAX directive.
	`TAXPointDateCode`             		  	 							varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-008 / The code of the date when the TAX becomes accountable for the Seller and for the Buyer.
	`PaymentDueDate`              			 							varchar(80) DEFAULT NULL, 	-- <cbc> "2019-01-01" / IBT-009 / The date when the payment is due.
	`BuyerReference`              			 							varchar(100) DEFAULT NULL, 	-- <cbc> "123" / IBT-010 / An identifier assigned by the Buyer used for internal routing purposes.
	`ProjectReference`             	 		 							varchar(10) DEFAULT NULL, 	-- <cbc> "321" / IBT-011 / The identification of the project the invoice refers to
	`ContractReference`            	  		 							varchar(10) DEFAULT NULL, 	-- <cbc> "Contract321" / IBT-012 / The identification of a contract.
	`PurchaseOrderReference`          		 							varchar(10) DEFAULT NULL, 	-- <cbc> "123" / IBT-013 / An identifier of a referenced purchase order, issued by the Buyer.
	`SalesOrderReference`              	     							varchar(10) DEFAULT NULL, 	-- <cbc> "123" / IBT-014 / An identifier of a referenced sales order issued by the Seller.
	`ReceivingAdviceReference`           	 							varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-015 / An identifier of a referenced receiving advice.
	`DespatchAdviceReference`           	 							varchar(10) DEFAULT NULL, 	-- <cbc> "987" / IBT-016 / An identifier of a referenced despatch advice.
	`TenderOrLotReference`                   							varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-017 / The identification of the call for tender or lot the invoice relates to.
	`PaymentTerms`              			 							varchar(10) DEFAULT NULL, 	-- <cbc> "gr12345" / IBT-020 / A textual description of the payment terms that apply to the amount due for payment (Including description of possible penalties).
	`TermsAmount`              				 							varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-176 / The payment amount that these terms apply to.
	`TermsInstallmentDueDate`          		 							varchar(80) DEFAULT NULL, 	-- <cbc> " / IBT-177 / The date before end of which the terms amount shall be settled.
	`InvoiceNoteSubjectCode`            	 							varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-021 / The subject of the textual note in EN BT-22.
	`InvoiceNote`             			  	 							varchar(100) DEFAULT NULL, 	-- <cbc> "Ordered at trade show" / IBT-022 / A textual note that gives unstructured information that is relevant to the Invoice as a whole.
	`BusinessProcessType`            	 	 							varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-023 / Identifies the business process context in which the transaction appears, to enable the Buyer to process the Invoice in an appropriate way.
	`PrecedingInvoiceReference`           	 							varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-025 / The identification of an Invoice that was previously sent by the Seller.
	`PrecedingInvoiceIssueDate`           	 							varchar(80) DEFAULT NULL, 	-- <cbc> "2018-06-01" / IBT-026 / The date when the Preceding Invoice was issued.
	`ActualDeliveryDate`           		  								varchar(80) DEFAULT NULL, 	-- <cbc> " / IBT-072 / the date on which the supply of goods or services was made or completed.
	`InvoicingPeriodStartDate`         	   		 						varchar(80) DEFAULT NULL, 	-- <cbc> "2018-11-01" / IBT-073 / The date when the Invoice period starts.
	`InvoicingPeriodEndDate`          									varchar(80) DEFAULT NULL, 	-- <cbc> "2018-11-30" / IBT-074 / The date when the Invoice period ends.
	`PaymentInstructionsID`            									varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-178 / An identifier for the payment instructions.
	`PaymentMeansTypeCode`            									varchar(4) DEFAULT NULL, 	-- <cbc> "30" / IBT-081 / The means, expressed as code, for how a payment is expected to be or has been settled.
	`PaymentCardPrimaryAccountNumber`     		    					varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-087 / The Primary Account Number (PAN) of the card used for payment.
	`PaymentCardHolderName`            			    					varchar(18) DEFAULT NULL, 	-- <cbc> " / IBT-088 / The name of the payment card holder.
	`PaidAmounts`             					    					varchar(13) DEFAULT NULL, 	-- <cbc> " / IBG-35 / Breakdown of the paid amount deducted from the amount due.
	`PaidAmount`               											varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-180 / The amount of the payment in the invoice currency.
	`PaymentType`             					    					varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-182 / The type of the the payment.
	`SumOfInvoiceLineNetAmount`           								varchar(13) DEFAULT NULL, 	-- <cbc> ""2374.05" / IBT-106 / Sum of all Invoice line net amounts in the Invoice.
	`InvoiceTotalAmountWithoutTAX`          							varchar(13) DEFAULT NULL, 	-- <cbc> "33915.00" / IBT-109 / The total amount of the Invoice without TAX.
	`InvoiceTotalTAXAmount`             								varchar(13) DEFAULT NULL, 	-- <cbc> "2374.05" / IBT-110 / The total TAX amount for the Invoice.
	`InvoiceTotalAmountWithTAX`           								varchar(13) DEFAULT NULL, 	-- <cbc> "36289.05" / IBT-112 / The total amount of the Invoice with tax.
	`PaidAmount`               											varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-113 / The sum of amounts which have been paid in advance.
	`AmountDueForPayment`             									varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-115 / The outstanding amount that is requested to be paid.
	`ExternalDocumentLocation`            								varchar(100) DEFAULT NULL, 	-- <cbc> " / IBT-124 / The URL (Uniform Resource Locator) that identifies where the external document is located.
	`AttachedDocument`               									varchar(100) DEFAULT NULL, 	-- <cbc> " / IBT-125 / An attached document embedded as binary object or sent together with the invoice.
    PRIMARY KEY (`InvoiceNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
