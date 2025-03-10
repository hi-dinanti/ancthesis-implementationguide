Profile: ANCPatient
Parent: $Patient
Id: ANCPatient
Title: "Antenatal Care Patient"
Description: "Demographics and other administrative information about an individual receiving care or other health-related services. For antenatal care related service, patient gender is female."
* gender 1..1 MS SU code "female" "Administrative Gender - the gender that the patient is considered to have for administration and record keeping purposes."
* gender from http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1 (required)
* gender ^short = "Only female is allowed in ANC visit"
* gender = #female
* gender ^fixedCode = #female
* gender ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* gender ^binding.extension[=].valueString = "AdministrativeGender"
* gender ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* gender ^binding.extension[=].valueBoolean = true
* gender ^binding.description = "The gender of a person used for administrative purposes."