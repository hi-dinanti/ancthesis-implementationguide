Profile: ANCObservation
Parent: SatuSehatObservation
Id: ANCObservation
Title: "Antenatal Care Observation"
Description: "Antenatal Care Observation"
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/Observation"
* ^status = #active
* ^type = "Observation"
// * ^experimental = true
* category 0..1 
* category ^comment = "Classification of  type of observation. A code that classifies the general type of observation being made."
* category from http://hl7.org/fhir/ValueSet/observation-category (preferred) 
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
// * category.coding.code = #survey
// * category.coding.display = "Survey"
* category ^comment = "In addition to the required category valueset, this element allows various categorization schemes based on the owner’s definition of the category and effectively multiple categories can be used at once.  The level of granularity is defined by the category concepts in the value set."
* category ^requirements = "Used for filtering what observations are retrieved and displayed."
* category ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."
* subject 1..1 MS 
* subject only Reference(ANCPatient)
* encounter only Reference(ANCEncounter) 
* value[x] 0..1
* value[x] ^comment = "Value can be Quantity or CodeableConcept"
* valueCodeableConcept 0..1
* valueQuantity 0..1

* note 0..1 // Annotation "Comments about the observation. Comments about the observation or the results."
* note ^comment = "May include general statements about the observation, or statements about significant, unexpected or unreliable results values, or information about its source when relevant to its interpretation."
* note ^requirements = "Need to be able to provide free text additional information."