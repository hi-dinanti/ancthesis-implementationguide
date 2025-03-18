Profile: MUAC
Parent: $Observation
Id: MUAC
Title: "Mid Upper Arm Circumference - LiLA (Observation)"
Description: "Observation representing the mid upper arm circumference (MUAC/LiLA) measurement of the patient. This data supports antenatal care assessments, nutritional evaluations, and maternal health risk stratification."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/Observation"
* category 0..1 
* category ^comment = "Classification of  type of observation. A code that classifies the general type of observation being made."
* category from http://hl7.org/fhir/ValueSet/observation-category (preferred) 
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #exam
* category.coding.display = "Exam"
* category ^comment = "In addition to the required category valueset, this element allows various categorization schemes based on the owner’s definition of the category and effectively multiple categories can be used at once.  The level of granularity is defined by the category concepts in the value set."
* category ^requirements = "Used for filtering what observations are retrieved and displayed."
* category ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."
* code 1..1 MS // CodeableConcept "Type of observation (code / type). Describes what was observed. Sometimes this is called the observation \"name\"."
* code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* code ^comment = "*All* code-value and, if present, component.code-component.value pairs need to be taken into account to correctly understand the meaning of the observation."
* code ^requirements = "Knowing what kind of observation is being made is essential to understanding the observation."
* code 1..1 MS
* code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* code ^comment = "*All* code-value and, if present, component.code-component.value pairs need to be taken into account to correctly understand the meaning of the observation."
* code ^requirements = "Knowing what kind of observation is being made is essential to understanding the observation."

// Enable slicing on code.coding
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slices for SNOMED and ANC custom codes"

// Define slices explicitly
* code.coding contains SNOMED 1..1 MS and ANC 1..1 MS 

// Assign values to the LOINC 
* code.coding[SNOMED].system 1..1
* code.coding[SNOMED].code 1..1
* code.coding[SNOMED].display 1..1
* code.coding[SNOMED].system = "http://snomed.info/sct"
* code.coding[SNOMED].code = #284473002
* code.coding[SNOMED].display = "Mid upper arm circumference"

// Assign values to the 
* code.coding[ANC].system 1..1
* code.coding[ANC].code 1..1
* code.coding[ANC].display 1..1
* code.coding[ANC].system = "http://terminology.kemkes.go.id/CodeSystem/anc-custom-codes"
* code.coding[ANC].code = #ANC.SS.DE3
* code.coding[ANC].display = "Lingkar Lengan Atas (LILA)"

* subject 0..1 MS 
* subject only Reference($pwskia-patient) //Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Location) "Who and/or what the observation is about. The patient, or group of patients, location, or device this observation is about and into whose record the observation is placed. If the actual focus of the observation is different from the subject (or a sample of, part, or region of the subject), the `focus` element or the `code` itself specifies the actual focus of the observation."
* subject ^comment = "One would expect this element to be a cardinality of 1..1. The only circumstance in which the subject can be missing is when the observation is made by a device that does not know the patient. In this case, the observation SHALL be matched to a patient through some context/channel matching technique, and at this point, the observation should be updated."
* subject ^requirements = "Observations have no value if you don't know who or what they're about."

* value[x] 1..1 
* value[x] only Quantity
* value[x] ^short = "Value type is Quantity."
* valueQuantity ^comment = "Mid upper arm circumference measurement"
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

* interpretation.coding 1..1 MS
* interpretation.coding ^slicing.discriminator.type = #value
* interpretation.coding ^slicing.discriminator.path = "code"
* interpretation.coding ^slicing.rules = #closed
* interpretation.coding contains
    kek 0..1 MS and 
    risiko-kek 0..1 MS and
    normal 0..1 MS

* interpretation.coding[kek].system = "http://terminology.kemkes.go.id/CodeSystem/clinical-term"
* interpretation.coding[kek].code = #OI000018
* interpretation.coding[kek].display = "Kurang Energi Kronis (KEK)"
* note ^short = "LiLA <23 cm"

* interpretation.coding[risiko-kek].system = "http://terminology.kemkes.go.id/CodeSystem/clinical-term"
* interpretation.coding[risiko-kek].code = #OI000035
* interpretation.coding[risiko-kek].display = "Risiko Kurang Energi Kronis (KEK)"
* note ^short = "LiLA 23 - <23,5 cm"

* interpretation.coding[normal].system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation.coding[normal].code = #N
* interpretation.coding[normal].display = "Normal"
* note ^short = "LiLA ≥ 23,5 cm"

* note 0..1 // Annotation "Comments about the observation. Comments about the observation or the results."
* note ^comment = "May include general statements about the observation, or statements about significant, unexpected or unreliable results values, or information about its source when relevant to its interpretation."
* note ^requirements = "Need to be able to provide free text additional information."