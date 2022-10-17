CREATE TABLE `jp_pint_peppol_electronic_invoice_header_data`
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
	`InvoicedObjectIdentifier`            	 							varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-018 / An identifier for an object on which the invoice is based, given by the Seller.
	`TheIdentificationSchemeIdentifierOfTheInvoicedObjectIdentifier`    varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-018-1 / If it may be not clear for the receiver what scheme is used for the identifier, a conditional scheme identifier should be used that shall be chosen from the UNTDID 1153 code list [6] entries.
	`BuyerAccountingReference`               							varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-019 / A textual value that specifies where to book the relevant data into the Buyer’s financial accounts.
	`TermsPaymentInstructionsID`          	 							varchar(2) DEFAULT NULL, 	-- <cbc> "30" / IBT-187 / The payment instructions that apply to these payment terms.
	`PaymentTerms`              			 							varchar(10) DEFAULT NULL, 	-- <cbc> "gr12345" / IBT-020 / A textual description of the payment terms that apply to the amount due for payment (Including description of possible penalties).
	`TermsAmount`              				 							varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-176 / The payment amount that these terms apply to.
	`TermsInstallmentDueDate`          		 							varchar(80) DEFAULT NULL, 	-- <cbc> " / IBT-177 / The date before end of which the terms amount shall be settled.
	`InvoiceNoteSubjectCode`            	 							varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-021 / The subject of the textual note in EN BT-22.
	`InvoiceNote`             			  	 							varchar(100) DEFAULT NULL, 	-- <cbc> "Ordered at trade show" / IBT-022 / A textual note that gives unstructured information that is relevant to the Invoice as a whole.
	`BusinessProcessType`            	 	 							varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-023 / Identifies the business process context in which the transaction appears, to enable the Buyer to process the Invoice in an appropriate way.
	`SpecificationIdentifier`         	  	 							varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-024 / An identification of the specification containing the total set of rules regarding semantic content, cardinalities and business rules to which the data contained in the instance document conforms.
	`PrecedingInvoiceReference`           	 							varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-025 / The identification of an Invoice that was previously sent by the Seller.
	`PrecedingInvoiceIssueDate`           	 							varchar(80) DEFAULT NULL, 	-- <cbc> "2018-06-01" / IBT-026 / The date when the Preceding Invoice was issued.
	`ActualDeliveryDate`           		  								varchar(80) DEFAULT NULL, 	-- <cbc> " / IBT-072 / the date on which the supply of goods or services was made or completed.
	`InvoicingPeriodStartDate`         	   		 						varchar(80) DEFAULT NULL, 	-- <cbc> "2018-11-01" / IBT-073 / The date when the Invoice period starts.
	`InvoicingPeriodEndDate`          									varchar(80) DEFAULT NULL, 	-- <cbc> "2018-11-30" / IBT-074 / The date when the Invoice period ends.
	`PaymentInstructionsID`            									varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-178 / An identifier for the payment instructions.
	`PaymentMeansTypeCode`            									varchar(4) DEFAULT NULL, 	-- <cbc> "30" / IBT-081 / The means, expressed as code, for how a payment is expected to be or has been settled.
	`PaymentMeansText`              									varchar(100) DEFAULT NULL, 	-- <cbc> "--" / IBT-082 / The means, expressed as text, for how a payment is expected to be or has been settled.
	`RemittanceInformation`             								varchar(100) DEFAULT NULL, 	-- <cbc> " / IBT-083 / A textual value used for payment routing or to establish a link between the payment and the Invoice.
	`SchemeIdentifier`              									varchar(10) DEFAULT NULL, 	-- <cbc> " / ibt-083-1 / The identification of the identification scheme. As example ABA
	`PaymentAccountIdentifier`             		 						varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-084 / A unique identifier of the financial payment account, at a payment service provider, to which payment should be made.
	`SchemeIdentifier`              									varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-084-1 / The identification of the identification scheme. As example IBAN
	`PaymentAccountName`             									varchar(40) DEFAULT NULL, 	-- <cbc> " / 0 / The name of the payment account, at a payment service provider, to which payment should be made.
	`PaymentServiceProviderIdentifier`    								varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-086 / An identifier for the payment service provider where a payment account is located.
--	`AccountAddressLine1`            									varchar(6) DEFAULT NULL, 	-- <cbc> "--" / IBT-169 / The main address line in an address.
--	`AccountAddressLine2`            									varchar(6) DEFAULT NULL, 	-- <cbc> "--" / IBT-170 / An additional address line in an address that can be used to give further details supplementing the main line.
--	`AccountCity`              			    							varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-171 / The common name of the city, town or village, where the account address is located.
--	`AccountPostCode`             			 							varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-172 / The identifier for an addressable group of properties according to the relevant postal service.
--	`AccountCountrySubdivision`         	 							varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-173 / The subdivision of a country.
--	`AccountAddressLine3`            		 							varchar(6) DEFAULT NULL, 	-- <cbc> "--" / IBT-174 / An additional address line in an address that can be used to give further details supplementing the main line.
--	`AccountCountryCode`             		 							varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-175 / A code that identifies the country.
	`PaymentCardPrimaryAccountNumber`     		    					varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-087 / The Primary Account Number (PAN) of the card used for payment.
	`PaymentCardHolderName`            			    					varchar(18) DEFAULT NULL, 	-- <cbc> " / IBT-088 / The name of the payment card holder.
--	`MandateReferenceIdentifier`       			    					varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-089 / Unique identifier assigned by the Payee for referencing the direct debit mandate.
--	`BankAssignedCreditorIdentifier`      		    					varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-090 / Unique banking reference identifier of the Payee or Seller assigned by the Payee or Seller bank.
--	`DebitedAccountIdentifier`         			    					varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-091 / The account to be debited by the direct debit.
	`PaidAmounts`             					    					varchar(13) DEFAULT NULL, 	-- <cbc> " / IBG-35 / Breakdown of the paid amount deducted from the amount due.
--	`PaymentIdentifier`             				    				varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-179 / An identifier that references the payment, such as bank transfer identifier.
	`PaidAmount`               											varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-180 / The amount of the payment in the invoice currency.
--	`TheDateWhenThePaidAmountIsDebitedToTheInvoice` 					varchar(80) DEFAULT NULL, 	-- <cbc> " / IBT-181 / The date when the prepaid amount was received by the seller.
	`PaymentType`             					    					varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-182 / The type of the the payment.
	`DocumentLevelAllowanceAmount`          	    					varchar(13) DEFAULT NULL, 	-- <cbc> "0.00" / IBT-092 / The amount of an allowance, without TAX.
	`DocumentLevelAllowanceBaseAmount`        							varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-093 / The base amount that may be used, in conjunction with the document level allowance percentage, to calculate the document level allowance amount.
	`DocumentLevelAllowancePercentage`        							varchar(3) DEFAULT NULL, 	-- <cbc> "7" / IBT-094 / The percentage that may be used, in conjunction with the document level allowance base amount, to calculate the document level allowance amount.
--	`DocumentLevelAllowanceTAXCategoryCode`    	    					varchar(10) DEFAULT NULL, 	-- <cbc> "SR" / IBT-095 / A coded identification of what TAX category applies to the document level allowance.
--	`DocumentLevelAllowanceTAXRate`         							varchar() DEFAULT NULL, 	-- <cbc> " / IBT-096 / The TAX rate, represented as percentage that applies to the document level allowance.
--	`DocumentLevelAllowanceReason`          							varchar(100) DEFAULT NULL, 	-- <cbc> "--" / IBT-097 / The reason for the document level allowance, expressed as text.
--	`DocumentLevelAllowanceReasonCode`        	    					varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-098 / The reason for the document level allowance, expressed as a code.
	`DocumentLevelChargeAmount`          								varchar(13) DEFAULT NULL, 	-- <cbc> "33915.00" / IBT-099 / The amount of a charge, without TAX.
	`DocumentLevelChargeBaseAmount`         							varchar() DEFAULT NULL, 	-- <cbc> " / IBT-100 / The base amount that may be used, in conjunction with the document level charge percentage, to calculate the document level charge amount.
	`DocumentLevelChargePercentage`         							varchar(3) DEFAULT NULL, 	-- <cbc> "7" / IBT-101 / The percentage that may be used, in conjunction with the document level charge base amount, to calculate the document level charge amount.
--	`DocumentLevelChargeTAXCategoryCode`      							varchar(10) DEFAULT NULL, 	-- <cbc> "SR" / IBT-102 / A coded identification of what TAX category applies to the document level charge.
--	`DocumentLevelChargeTAXRate`          								varchar(6) DEFAULT NULL, 	-- <cbc> " / IBT-103 / The TAX rate, represented as percentage that applies to the document level charge.
--	`DocumentLevelChargeReason`           								varchar(100) DEFAULT NULL, 	-- <cbc> "--" / IBT-104 / The reason for the document level charge, expressed as text.
--	`DocumentLevelChargeReasonCode`         							varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-105 / The reason for the document level charge, expressed as a code.
	`SumOfInvoiceLineNetAmount`           								varchar(13) DEFAULT NULL, 	-- <cbc> ""2374.05" / IBT-106 / Sum of all Invoice line net amounts in the Invoice.
	`SumOfAllowancesOnDocumentLevel`        							varchar(6) DEFAULT NULL, 	-- <cbc> "0.00" / IBT-107 / Sum of all allowances on document level in the Invoice.
	`SumOfChargesOnDocumentLevel`         								varchar(13) DEFAULT NULL, 	-- <cbc> "2374.05" / IBT-108 / Sum of all charges on document level in the Invoice.
	`InvoiceTotalAmountWithoutTAX`          							varchar(13) DEFAULT NULL, 	-- <cbc> "33915.00" / IBT-109 / The total amount of the Invoice without TAX.
	`InvoiceTotalTAXAmount`             								varchar(13) DEFAULT NULL, 	-- <cbc> "2374.05" / IBT-110 / The total TAX amount for the Invoice.
	`InvoiceTotalAmountWithTAX`           								varchar(13) DEFAULT NULL, 	-- <cbc> "36289.05" / IBT-112 / The total amount of the Invoice with tax.
	`PaidAmount`               											varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-113 / The sum of amounts which have been paid in advance.
	`RoundingAmount`               										varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-114 / The amount to be added to the invoice total to round the amount to be paid.
	`AmountDueForPayment`             									varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-115 / The outstanding amount that is requested to be paid.
--	`TAXCategoryTaxableAmount`            								varchar(13) DEFAULT NULL, 	-- <cbc> "33915.00" / IBT-116 / Sum of all taxable amounts subject to a specific TAX category code and TAX category rate (if the TAX category rate is applicable).
--	`TAXCategoryTaxAmount`              								varchar(13) DEFAULT NULL, 	-- <cbc> "2374.05" / IBT-117 / The total TAX amount for a given TAX category.
--	`TAXCategoryCode`              										varchar(2) DEFAULT NULL, 	-- <cbc> "SR" / IBT-118 / Coded identification of a TAX category.
--	`TAXCategoryRate`              										varchar(6) DEFAULT NULL, 	-- <cbc> " / IBT-119 / The TAX rate, represented as percentage that applies for the relevant TAX category.
--	`TAXExemptionReasonText`            								varchar(100) DEFAULT NULL, 	-- <cbc> "--" / IBT-120 / A textual statement of the reason why the amount is exempted from TAX or why no TAX is being charged
--	`TAXExemptionReasonCode`            								varchar(3) DEFAULT NULL, 	-- <cbc> " / IBT-121 / A coded statement of the reason for why the amount is exempted from TAX.
--	`InvoiceTotalTAXAmountInAccountingCurrency`     					varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-111 / The TAX total amount expressed in the accounting currency accepted or required in the country of the Seller.
--	`TAXCategoryTaxAmountInNationalCurrency`    						varchar(13) DEFAULT NULL, 	-- <cbc> " / IBT-190 / The TAX amount for a given TAX category stated in the national currency.
--	`TAXCategoryCode`              										varchar(2) DEFAULT NULL, 	-- <cbc> " / IBT-192 / Coded identification of a TAX category.
--	`TAXCategoryRate`              										varchar(6) DEFAULT NULL, 	-- <cbc> " / IBT-193 / The TAX rate, represented as percentage that applies for the relevant TAX category.
--	`SupportingDocumentReference`         								varchar(10) DEFAULT NULL, 	-- <cbc> " / IBT-122 / An identifier of the supporting document.
--	`SupportingDocumentDescription`         							varchar(100) DEFAULT NULL, 	-- <cbc> " / IBT-123 / A description of the supporting document.
	`ExternalDocumentLocation`            								varchar(100) DEFAULT NULL, 	-- <cbc> " / IBT-124 / The URL (Uniform Resource Locator) that identifies where the external document is located.
	`AttachedDocument`               									varchar(100) DEFAULT NULL, 	-- <cbc> " / IBT-125 / An attached document embedded as binary object or sent together with the invoice.
--	`AttachedDocumentMimeCode`            								varchar(20) DEFAULT NULL, 	-- <cbc> " / ibt-125-1 / 
--	`AttachedDocumentFilename`											varchar(100) DEFAULT NULL, 	-- <cbc> "/ibt-125-2/ 
    PRIMARY KEY (`InvoiceNumber`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
