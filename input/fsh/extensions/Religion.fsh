Extension: Religion
Id: Religion
Title: "religion"
Description: "The patient's professed religious affiliations."
Context: Patient
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/patient-religion"
* ^status = #draft
// * ^date = "05/12/2023 03:44:55"
* ^publisher = "Ministry of Health Indonesia"
* . 0..*
* . ^short = "The patient's professed religious affiliations"
* . ^definition = "The patient's professed religious affiliations."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $v3-ReligiousAffiliation (extensible)
* value[x] ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* value[x] ^binding.extension.valueString = "Religion"