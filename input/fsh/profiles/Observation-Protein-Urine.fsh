Profile: ANCProteinUrine
Parent: ANCObservation
Id: ANCProteinUrine
Title: "Protein Urine (Observation)" 
Description: "Observation representing the protein concentration in urine, measured by test strip. This data supports antenatal care assessments for preeclampsia screening and other prenatal complications as part of 10T minimum service exam."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCProteinUrine"
* ^status = #active
* category 1..1
* category.coding 1..1
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code 1..1 MS
* code.coding 1..* MS
* code ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "ANCProteinUrineVS"
* code ^binding.description = "Codes for protein urine tests."
* code from ANCProteinUrineVS (required)

* value[x] 0..1 MS
* value[x] ^comment = "Value can be Quantity or CodeableConcept."

// valueCodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* valueCodeableConcept ^binding.extension[=].valueString = "UrineLabValueSet"
* valueCodeableConcept ^binding.description = "Urine protein test result classification."
* valueCodeableConcept from UrineLabResultVS (required)

// valueQuantity
* valueQuantity 0..1
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg/dL
* valueQuantity ^short = "Protein concentration in urine (mg/dL)"