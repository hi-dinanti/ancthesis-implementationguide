Resource: Medication
Id: Medication
Description: "This resource is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
* ^meta.lastUpdated = "2023-04-26T10:02:18.2438128+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Medications"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #business
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #phx
* ^date = "2023-05-12T03:54:04.8907436+00:00"
* ^publisher = "Health Level Seven International (Pharmacy)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication/index.cfm"
* . ^short = "Definition of a Medication"
* . ^definition = "This resource is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension[medicationType] ^sliceName = "medicationType"
* extension[medicationType] ^short = "nc | ep | sd"
* extension[medicationType] ^definition = "Medication type value describe drug request and dispensing type, one of  nc (non compound), ep (equal parts) or sd (give such dose)."
* extension[medicationType] ^type.code = "Extension"
* extension[medicationType] ^type.profile = "https://fhir.kemkes.go.id/r4/StructureDefinition/MedicationType"
* extension[medicationType] ^isModifier = false
* extension[medicationType].value[x] undefined..undefined BackboneElement "nc | ep | sd" "Value of extension - must be one of nc | ep | sd"
* extension[medicationType].value[x].coding.system undefined..undefined BackboneElement "Medication Type Code System" "The identification of the code system regarding medication"
* extension[medicationType].value[x].coding.system = "http://terminology.kemkes.go.id/CodeSystem/medication-type" (exactly)
* identifier undefined..undefined SU Identifier "Business identifier for this medication" "Business identifier for this medication."
* identifier ^comment = "The serial number could be included as an identifier."
* code undefined..1 SU CodeableConcept "Codes that identify this medication" "A code (or set of codes) that specify this medication, or a textual description if no code is available. Usage note: This could be a standard medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or local formulary code, optionally with translations to other code systems."
* code from http://hl7.org/fhir/ValueSet/medication-codes (example)
* code ^comment = "Depending on the context of use, the code that was actually selected by the user (prescriber, dispenser, etc.) will have the coding.userSelected set to true.  As described in the coding datatype: \"A coding may be marked as a \"userSelected\" if a user selected the particular coded value in a user interface (e.g. the user selects an item in a pick-list). If a user selected coding exists, it is the preferred choice for performing translations etc. Other codes can only be literal translations to alternative code systems, or codes at a lower level of granularity (e.g. a generic code for a vendor-specific primary one)."
* code ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "MedicationFormalRepresentation"
* code ^binding.description = "A coded concept that defines the type of a medication."
* status undefined..1 ?! SU code "active | inactive | entered-in-error" "A code to indicate if the medication is in active use."
* status from http://hl7.org/fhir/ValueSet/medication-status|4.0.1 (required)
* status ^comment = "This status is intended to identify if the medication in a local system is in active use within a drug database or inventory.  For example, a pharmacy system may create a new drug file record for a compounded product \"ABC Hospital Special Cream\" with an active status.  At some point in the future, it may be determined that the drug record was created with an error and the status is changed to \"entered in error\".   This status is not intended to specify if a medication is part of a particular formulary.  It is possible that the drug record may be referenced by multiple formularies or catalogues and each of those entries would have a separate status."
* status ^isModifierReason = "This element changes the interpretation of all descriptive attributes."
* status ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "MedicationStatus"
* status ^binding.description = "A coded concept defining if the medication is in active use."
* manufacturer undefined..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Manufacturer of the item" "Describes the details of the manufacturer of the medication product.  This is not intended to represent the distributor of a medication product."
* form undefined..1 CodeableConcept "powder | tablets | capsule +" "Describes the form of the item.  Powder; tablets; capsule."
* form from http://hl7.org/fhir/ValueSet/medication-form-codes (example)
* form ^comment = "When Medication is referenced from MedicationRequest, this is the ordered form.  When Medication is referenced within MedicationDispense, this is the dispensed form.  When Medication is referenced within MedicationAdministration, this is administered form."
* form ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* form ^binding.extension.valueString = "MedicationForm"
* form ^binding.description = "A coded concept defining the form of a medication."
* amount undefined..1 SU Ratio "Amount of drug in package" "Specific amount of the drug in the packaged product.  For example, when specifying a product that has the same strength (For example, Insulin glargine 100 unit per mL solution for injection), this attribute provides additional clarification of the package amount (For example, 3 mL, 10mL, etc.)."
* ingredient undefined..undefined BackboneElement "Active or inactive ingredient" "Identifies a particular constituent of interest in the product."
* ingredient ^comment = "The ingredients need not be a complete list.  If an ingredient is not specified, this does not indicate whether an ingredient is present or absent.  If an ingredient is specified it does not mean that all ingredients are specified.  It is possible to specify both inactive and active ingredients."
* ingredient.item[x] 1..1 CodeableConcept or Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Substance or https://fhir.kemkes.go.id/r4/StructureDefinition/Medication) "The actual ingredient or content" "The actual ingredient - either a substance (simple ingredient) or another medication of a medication."
* ingredient.item[x] ^requirements = "The ingredient may reference a substance (for example, amoxicillin) or another medication (for example in the case of a compounded product, Glaxal Base)."
* ingredient.isActive undefined..1 boolean "Active ingredient indicator" "Indication of whether this ingredient affects the therapeutic action of the drug."
* ingredient.isActive ^requirements = "True indicates that the ingredient affects the therapeutic action of the drug (i.e. active). \rFalse indicates that the ingredient does not affect the therapeutic action of the drug (i.e. inactive)."
* ingredient.strength undefined..1 Ratio "Quantity of ingredient present" "Specifies how many (or how much) of the items there are in this Medication.  For example, 250 mg per tablet.  This is expressed as a ratio where the numerator is 250mg and the denominator is 1 tablet."
* batch undefined..1 BackboneElement "Details about packaged medications" "Information that only applies to packages (not products)."
* batch.lotNumber undefined..1 string "Identifier assigned to batch" "The assigned lot number of a batch of the specified product."
* batch.expirationDate undefined..1 dateTime "When batch will expire" "When this specific batch of product will expire."