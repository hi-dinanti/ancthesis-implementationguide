Profile: Rhesus
Parent: $Observation
Id: Rhesus
Title: "Rhesus (Observation)" 
Description: "Observation representing rhesus type (Rh factor) recorded during an antenatal care visit. This data supports maternal health assessment as part of the Indonesian minimum 10T exam"
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/Observation"
* category 0..1 
* category ^comment = "Classification of  type of observation. A code that classifies the general type of observation being made."
* category from http://hl7.org/fhir/ValueSet/observation-category (preferred) 
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"
* category ^comment = "In addition to the required category valueset, this element allows various categorization schemes based on the owner’s definition of the category and effectively multiple categories can be used at once.  The level of granularity is defined by the category concepts in the value set."
* category ^requirements = "Used for filtering what observations are retrieved and displayed."
* category ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."

* code 1..1 MS
* code.coding 1..* MS
* code.coding.system 0..1
* code.coding.code 0..1
* code.coding.display 0..1
* code.coding.system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding.code = #ANC.B9.DE29
* code.coding.display = "Rh factor"

// Define slicing rules for component
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing for Rh typing (Positive and Negative)"
* component contains rhpos 0..1 and rhneg 0..1

// Rh Positive Component
* component[rhpos].code.coding.system = "http://loinc.org"
* component[rhpos].code.coding.code = #10331-7
* component[rhpos].code.coding.display = "Rh [Type] in Blood"
* component[rhpos].valueCodeableConcept.coding.system = "http://loinc.org"
* component[rhpos].valueCodeableConcept.coding.code = #LA6576-8
* component[rhpos].valueCodeableConcept.coding.display = "Positive"

// Rh Negative Component
* component[rhneg].code.coding.system = "http://loinc.org"
* component[rhneg].code.coding.code = #10331-7
* component[rhneg].code.coding.display = "Rh [Type] in Blood"
* component[rhneg].valueCodeableConcept.coding.system = "http://loinc.org"
* component[rhneg].valueCodeableConcept.coding.code = #LA6577-6
* component[rhneg].valueCodeableConcept.coding.display = "Negative"


* subject 0..1 MS 
* subject only Reference($satusehat-patient or $pwskia-patient) //Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Location) "Who and/or what the observation is about. The patient, or group of patients, location, or device this observation is about and into whose record the observation is placed. If the actual focus of the observation is different from the subject (or a sample of, part, or region of the subject), the `focus` element or the `code` itself specifies the actual focus of the observation."
* subject ^comment = "One would expect this element to be a cardinality of 1..1. The only circumstance in which the subject can be missing is when the observation is made by a device that does not know the patient. In this case, the observation SHALL be matched to a patient through some context/channel matching technique, and at this point, the observation should be updated."
* subject ^requirements = "Observations have no value if you don't know who or what they're about."

* note 0..1 // Annotation "Comments about the observation. Comments about the observation or the results."
* note ^comment = "May include general statements about the observation, or statements about significant, unexpected or unreliable results values, or information about its source when relevant to its interpretation."
* note ^requirements = "Need to be able to provide free text additional information."