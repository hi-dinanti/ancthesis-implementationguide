Resource: Invoice
Id: Invoice
Description: "Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose."
* ^meta.lastUpdated = "2019-10-31T22:29:23.356+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Financial.Billing"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fm
* ^status = #draft
* ^date = "2023-06-14T05:09:25.2943281+00:00"
* ^publisher = "Health Level Seven International (Financial Management)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/fm/index.cfm"
* . ^short = "Invoice containing ChargeItems from an Account"
* . ^definition = "Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose."
* identifier 0..* SU Identifier "Business Identifier for item" "Identifier of this Invoice, often used for reference in correspondence about this invoice or for tracking of payments."
* identifier ^requirements = "Allows Identification of this Invoice instance."
* status 1..1 ?! SU code "draft | issued | balanced | cancelled | entered-in-error" "The current state of the Invoice."
* status from http://hl7.org/fhir/ValueSet/invoice-status|4.0.1 (required)
* status ^isModifierReason = "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "InvoiceStatus"
* status ^binding.description = "Codes identifying the lifecycle stage of an Invoice."
* cancelledReason 0..1 string "Reason for cancellation of this Invoice" "In case of Invoice cancellation a reason must be given (entered in error, superseded by corrected invoice etc.)."
* cancelledReason ^comment = "Derived Profiles may choose to add invariants requiring this field to be populated if either priceOverride or factorOverride have been filled."
* cancelledReason ^isSummary = false
* type 0..1 SU CodeableConcept "Type of Invoice" "Type of Invoice depending on domain, realm an usage (e.g. internal/external, dental, preliminary)."
* type ^alias = "type"
* subject 0..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/Group) "Recipient(s) of goods and services" "The individual or set of individuals receiving the goods and services billed in this invoice."
* subject ^requirements = "Links the event to the Patient context."
* subject ^alias = "patient"
* recipient 0..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization or https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/RelatedPerson) "Recipient of this invoice" "The individual or Organization responsible for balancing of this invoice."
* date 0..1 SU dateTime "Invoice date / posting date" "Date/time(s) of when this Invoice was posted."
* date ^comment = "The list of types may be constrained as appropriate for the type of charge item."
* participant 0..* BackboneElement "Participant in creation of this Invoice" "Indicates who or what performed or participated in the charged service."
* participant ^isSummary = false
* participant.role 0..1 CodeableConcept "Type of involvement in creation of this Invoice" "Describes the type of involvement (e.g. transcriptionist, creator etc.). If the invoice has been created automatically, the Participant may be a billing engine or another kind of device."
* participant.role ^isSummary = false
* participant.actor 1..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/Organization or https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole or https://fhir.kemkes.go.id/r4/StructureDefinition/Device or https://fhir.kemkes.go.id/r4/StructureDefinition/RelatedPerson) "Individual who was involved" "The device, practitioner, etc. who performed or participated in the service."
* participant.actor ^isSummary = false
* issuer 0..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Issuing Organization of Invoice" "The organizationissuing the Invoice."
* issuer ^comment = "Practitioners and Devices can be associated with multiple organizations. It has to be made clear, on behalf of which Organization the services have been rendered."
* issuer ^isSummary = false
* account 0..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Account) "Account that is being balanced" "Account which is supposed to be balanced with this Invoice."
* account ^comment = "Systems posting the ChargeItems might not always be able to determine, which accounts the Items need to be places into. It is up to the potprocessing Financial System to apply internal rules to decide based on the Encounter/EpisodeOfCare/Patient/Coverage context and the type of ChargeItem, which Account is appropriate."
* account ^isSummary = false
* lineItem 0..* BackboneElement "Line items of this Invoice" "Each line item represents one charge for goods and services rendered. Details such as date, code and amount are found in the referenced ChargeItem resource."
* lineItem ^isSummary = false
* lineItem.sequence 0..1 positiveInt "Sequence number of line item" "Sequence in which the items appear on the invoice."
* lineItem.sequence ^isSummary = false
* lineItem.chargeItem[x] 1..1 CodeableConcept or Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/ChargeItem) "Reference to ChargeItem containing details of this line item or an inline billing code" "The ChargeItem contains information such as the billing code, date, amount etc. If no further details are required for the lineItem, inline billing codes can be added using the CodeableConcept data type instead of the Reference."
* lineItem.chargeItem[x] ^isSummary = false
* lineItem.priceComponent 0..* BackboneElement "Components of total line item price" "The price for a ChargeItem may be calculated as a base price with surcharges/deductions that apply in certain conditions. A ChargeItemDefinition resource that defines the prices, factors and conditions that apply to a billing code is currently under development. The priceComponent element can be used to offer transparency to the recipient of the Invoice as to how the prices have been calculated."
* lineItem.priceComponent ^isSummary = false
* lineItem.priceComponent.type 1..1 code "base | surcharge | deduction | discount | tax | informational" "This code identifies the type of the component."
* lineItem.priceComponent.type from http://hl7.org/fhir/ValueSet/invoice-priceComponentType|4.0.1 (required)
* lineItem.priceComponent.type ^isSummary = false
* lineItem.priceComponent.type ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* lineItem.priceComponent.type ^binding.extension.valueString = "InvoicePriceComponentType"
* lineItem.priceComponent.type ^binding.description = "Codes indicating the kind of the price component."
* lineItem.priceComponent.code 0..1 CodeableConcept "Code identifying the specific component" "A code that identifies the component. Codes may be used to differentiate between kinds of taxes, surcharges, discounts etc."
* lineItem.priceComponent.code ^isSummary = false
* lineItem.priceComponent.factor 0..1 decimal "Factor used for calculating this component" "The factor that has been applied on the base price for calculating this component."
* lineItem.priceComponent.factor ^comment = "There is no reason to carry the price in the instance of a ChargeItem unless circumstances require a manual override. The list prices or are usually defined in a back catalogue of the billing codes  (see ChargeItem.definition). Derived profiles may require a ChargeItem.overrideReason to be provided if either factor or price are manually overridden."
* lineItem.priceComponent.factor ^isSummary = false
* lineItem.priceComponent.amount 0..1 Money "Monetary amount associated with this component" "The amount calculated for this component."
* lineItem.priceComponent.amount ^comment = "There is no reason to carry the price in the instance of a ChargeItem unless circumstances require a manual override. The list prices or are usually defined in a back catalogue of the billing codes  (see ChargeItem.definition). Derived profiles may require a ChargeItem.overrideReason to be provided if either factor or price are manually overridden."
* lineItem.priceComponent.amount ^isSummary = false
* totalPriceComponent 0..* contentReference #Invoice.lineItem.priceComponent "Components of Invoice total" "The total amount for the Invoice may be calculated as the sum of the line items with surcharges/deductions that apply in certain conditions.  The priceComponent element can be used to offer transparency to the recipient of the Invoice of how the total price was calculated."
* totalPriceComponent ^isSummary = false
* totalNet 0..1 SU Money "Net total of this Invoice" "Invoice total , taxes excluded."
* totalNet ^comment = "There is no reason to carry the price in the instance of a ChargeItem unless circumstances require a manual override. The list prices or are usually defined in a back catalogue of the billing codes  (see ChargeItem.definition). Derived profiles may require a ChargeItem.overrideReason to be provided if either factor or price are manually overridden."
* totalGross 0..1 SU Money "Gross total of this Invoice" "Invoice total, tax included."
* totalGross ^comment = "There is no reason to carry the price in the instance of a ChargeItem unless circumstances require a manual override. The list prices or are usually defined in a back catalogue of the billing codes  (see ChargeItem.definition). Derived profiles may require a ChargeItem.overrideReason to be provided if either factor or price are manually overridden."
* paymentTerms 0..1 markdown "Payment details" "Payment details such as banking details, period of payment, deductibles, methods of payment."
* paymentTerms ^comment = "Derived Profiles may chose to add invariants requiring this field to be populated if either priceOverride or factorOverride have been filled."
* paymentTerms ^isSummary = false
* note 0..* Annotation "Comments made about the invoice" "Comments made about the invoice by the issuer, subject, or other participants."
* note ^isSummary = false