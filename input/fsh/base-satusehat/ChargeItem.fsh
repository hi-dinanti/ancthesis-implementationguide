Resource: ChargeItem
Id: ChargeItem
Description: "The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore referring not only to the product, but containing in addition details of the provision, like date, time, amounts and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal cost allocation."
* ^meta.lastUpdated = "2024-05-07T16:07:57.9464902+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Financial.General"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^status = #draft
* ^date = "2024-05-07T16:08:37.130606+00:00"
* ^publisher = "Health Level Seven International (Patient Administration)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pafm/index.cfm"
* . ^short = "Item containing charge code(s) associated with the provision of healthcare provider products"
* . ^definition = "The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore referring not only to the product, but containing in addition details of the provision, like date, time, amounts and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal cost allocation."
* extension contains unitPrice 0..*
* extension[unitPrice] ^type.code = "Extension"
* extension[unitPrice] ^type.profile = "https://fhir.kemkes.go.id/r4/StructureDefinition/unitPrice"
* extension[unitPrice] ^isModifier = false
* extension[unitPrice].value[x] 1..undefined BackboneElement
* extension contains totalPrice 0..*
* extension[totalPrice] ^type.code = "Extension"
* extension[totalPrice] ^type.profile = "https://fhir.kemkes.go.id/r4/StructureDefinition/totalPrice"
* extension[totalPrice] ^isModifier = false
* extension[totalPrice].value[x] 1..undefined BackboneElement
* extension contains chargeItemResponse 0..*
* extension[chargeItemResponse] ^type.code = "Extension"
* extension[chargeItemResponse] ^type.profile = "https://fhir.kemkes.go.id/r4/StructureDefinition/chargeItemResponse"
* extension[chargeItemResponse] ^isModifier = false
* identifier undefined..undefined SU Identifier "Business Identifier for item" "Identifiers assigned to this event performer or other systems."
* identifier ^requirements = "Allows identification of the charge Item as it is known by various participating systems and in a way that remains consistent across servers."
* definitionUri undefined..undefined uri "Defining information about the code of this charge item" "References the (external) source of pricing information, rules of application for the code this ChargeItem uses."
* definitionUri ^isSummary = false
* definitionCanonical undefined..undefined Canonical(https://fhir.kemkes.go.id/r4/StructureDefinition/ChargeItemDefinition) "Resource defining the code of this ChargeItem" "References the source of pricing information, rules of application for the code this ChargeItem uses."
* definitionCanonical ^isSummary = false
* status 1..1 ?! SU code "planned | billable | not-billable | aborted | billed | entered-in-error | unknown" "The current state of the ChargeItem."
* status from http://hl7.org/fhir/ValueSet/chargeitem-status|4.0.1 (required)
* status ^comment = "Unknown does not represent \"other\" - one of the defined statuses must apply.  Unknown is used when the authoring system is not sure what the current status is.\n\nThis element is labeled as a modifier because the status contains the code entered-in-error that marks the charge item as not currently valid."
* status ^isModifierReason = "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "ChargeItemStatus"
* status ^binding.description = "Codes identifying the lifecycle stage of a ChargeItem."
* partOf undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/ChargeItem) "Part of referenced ChargeItem" "ChargeItems can be grouped to larger ChargeItems covering the whole set."
* partOf ^requirements = "E.g. Drug administration as part of a procedure, procedure as part of observation, etc."
* partOf ^alias = "container"
* partOf ^isSummary = false
* code 1..1 SU CodeableConcept "A code that identifies the charge, like a billing code" "A code that identifies the charge, like a billing code."
* code from http://hl7.org/fhir/ValueSet/chargeitem-billingcodes (example)
* code ^alias = "type"
* code ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ChargeItemCode"
* code ^binding.description = "Example set of codes that can be used for billing purposes."
* subject 1..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/Group) "Individual service was done for/to" "The individual or set of individuals the action is being or was performed on."
* subject ^requirements = "Links the event to the Patient context."
* subject ^alias = "patient"
* context undefined..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Encounter or https://fhir.kemkes.go.id/r4/StructureDefinition/EpisodeOfCare) "Encounter / Episode associated with event" "The encounter or episode of care that establishes the context for this event."
* context ^requirements = "Links the request to the Encounter context."
* context ^alias = "encounter"
* occurrence[x] undefined..1 SU dateTime or Period or Timing "When the charged service was applied" "Date/time(s) or duration when the charged service was applied."
* occurrence[x] ^comment = "The list of types may be constrained as appropriate for the type of charge item."
* occurrence[x] ^alias = "timing"
* performer undefined..undefined BackboneElement "Who performed charged service" "Indicates who or what performed or participated in the charged service."
* performer ^isSummary = false
* performer.function undefined..1 CodeableConcept "What type of performance was done" "Describes the type of performance or participation(e.g. primary surgeon, anesthesiologiest, etc.)."
* performer.function from http://hl7.org/fhir/ValueSet/performer-role (example)
* performer.function ^isSummary = false
* performer.function ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* performer.function ^binding.extension.valueString = "ChargeItemPerformerFunction"
* performer.function ^binding.description = "Codes describing the types of functional roles performers can take on when performing events."
* performer.actor 1..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole or https://fhir.kemkes.go.id/r4/StructureDefinition/Organization or https://fhir.kemkes.go.id/r4/StructureDefinition/CareTeam or https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/Device or https://fhir.kemkes.go.id/r4/StructureDefinition/RelatedPerson) "Individual who was performing" "The device, practitioner, etc. who performed or participated in the service."
* performer.actor ^isSummary = false
* performingOrganization undefined..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Organization providing the charged service" "The organization requesting the service."
* performingOrganization ^comment = "Practitioners and Devices can be associated with multiple organizations. It has to be made clear, on behalf of which Organization the services have been rendered."
* performingOrganization ^isSummary = false
* requestingOrganization undefined..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Organization requesting the charged service" "The organization performing the service."
* requestingOrganization ^comment = "The rendered Service might not be associated with a Request. This property indicates which Organization requested the services to be rendered. (In many cases, this may just be the Department associated with the Encounter.location)."
* requestingOrganization ^isSummary = false
* costCenter undefined..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Organization that has ownership of the (potential, future) revenue" "The financial cost center permits the tracking of charge attribution."
* costCenter ^comment = "The costCenter could either be given as a reference to an Organization(Role) resource or as the identifier of the cost center determined by Reference.identifier.value and Reference.identifier.system, depending on use case requirements."
* costCenter ^isSummary = false
* quantity undefined..1 SU Quantity "Quantity of which the charge item has been serviced" "Quantity of which the charge item has been serviced."
* quantity ^comment = "In many cases this may just be a value, if the underlying units are implicit in the definition of the charge item code."
* bodysite undefined..undefined SU CodeableConcept "Anatomical location, if relevant" "The anatomical location where the related service has been applied."
* bodysite from http://hl7.org/fhir/ValueSet/body-site (example)
* bodysite ^comment = "Only used if not implicit in code found in Condition.code. If the use case requires attributes from the BodySite resource (e.g. to identify and track separately) then use the standard extension [bodySite](extension-bodysite.html).  May be a summary code, or a reference to a very precise definition of the location, or both."
* bodysite ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* bodysite ^binding.extension.valueString = "BodySite"
* bodysite ^binding.description = "Codes describing anatomical locations. May include laterality."
* factorOverride undefined..1 decimal "Factor overriding the associated rules" "Factor overriding the factor determined by the rules associated with the code."
* factorOverride ^comment = "There is no reason to carry the factor in the instance of a ChargeItem unless special circumstances require a manual override. The factors are usually defined by a set of rules in a back catalogue of the billing codes  (see ChargeItem.definition). Derived profiles may require a ChargeItem.overrideReason to be provided if either factor or price are manually overridden."
* factorOverride ^isSummary = false
* priceOverride undefined..1 Money "Price overriding the associated rules" "Total price of the charge overriding the list price associated with the code."
* priceOverride ^comment = "There is no reason to carry the price in the instance of a ChargeItem unless circumstances require a manual override. The list prices or are usually defined in a back catalogue of the billing codes  (see ChargeItem.definition). Derived profiles may require a ChargeItem.overrideReason to be provided if either factor or price are manually overridden."
* priceOverride ^isSummary = false
* overrideReason undefined..1 string "Reason for overriding the list price/factor" "If the list price or the rule-based factor associated with the code is overridden, this attribute can capture a text to indicate the  reason for this action."
* overrideReason ^comment = "Derived Profiles may choose to add invariants requiring this field to be populated if either priceOverride or factorOverride have been filled."
* overrideReason ^isSummary = false
* enterer undefined..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole or https://fhir.kemkes.go.id/r4/StructureDefinition/Organization or https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/Device or https://fhir.kemkes.go.id/r4/StructureDefinition/RelatedPerson) "Individual who was entering" "The device, practitioner, etc. who entered the charge item."
* enterer ^comment = "The enterer is also the person considered responsible for factor/price overrides if applicable."
* enteredDate undefined..1 SU dateTime "Date the charge item was entered" "Date the charge item was entered."
* enteredDate ^comment = "The actual date when the service associated with the charge has been rendered is captured in occurrence[x]."
* reason undefined..undefined CodeableConcept "Why was the charged  service rendered?" "Describes why the event occurred in coded or textual form."
* reason from http://hl7.org/fhir/ValueSet/icd-10 (example)
* reason ^comment = "If the application of the charge item requires a reason to be given, it can be captured here. Textual reasons can be captured using reasonCode.text."
* reason ^isSummary = false
* reason ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* reason ^binding.extension.valueString = "ChargeItemReason"
* reason ^binding.description = "Example binding for reason."
* service undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/DiagnosticReport or https://fhir.kemkes.go.id/r4/StructureDefinition/ImagingStudy or https://fhir.kemkes.go.id/r4/StructureDefinition/Immunization or https://fhir.kemkes.go.id/r4/StructureDefinition/MedicationAdministration or https://fhir.kemkes.go.id/r4/StructureDefinition/MedicationDispense or https://fhir.kemkes.go.id/r4/StructureDefinition/Observation or https://fhir.kemkes.go.id/r4/StructureDefinition/Procedure or https://fhir.kemkes.go.id/r4/StructureDefinition/SupplyDelivery) "Which rendered service is being charged?" "Indicated the rendered service that caused this charge."
* service ^isSummary = false
* product[x] undefined..1 CodeableConcept or Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Device or https://fhir.kemkes.go.id/r4/StructureDefinition/Medication or https://fhir.kemkes.go.id/r4/StructureDefinition/Substance) "Product charged" "Identifies the device, food, drug or other product being charged either by type code or reference to an instance."
* product[x] from http://hl7.org/fhir/ValueSet/device-kind (example)
* product[x] ^isSummary = false
* product[x] ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* product[x] ^binding.extension.valueString = "ChargeItemProduct"
* product[x] ^binding.description = "Example binding for product type."
* account undefined..undefined SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Account) "Account to place this charge" "Account into which this ChargeItems belongs."
* account ^comment = "Systems posting the ChargeItems might not always be able to determine, which accounts the Items need to be places into. It is up to the postprocessing Financial System to apply internal rules to decide based on the Encounter/EpisodeOfCare/Patient/Coverage context and the type of ChargeItem, which Account is appropriate."
* note undefined..undefined Annotation "Comments made about the ChargeItem" "Comments made about the event by the performer, subject or other participants."
* note ^isSummary = false
* supportingInformation undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Resource) "Further information supporting this charge" "Further information supporting this charge."
* supportingInformation ^isSummary = false