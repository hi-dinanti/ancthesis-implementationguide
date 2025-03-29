Profile: ANCDiastoleBP
Parent: ANCObservation
Id: ANCDiastoleBP
Title: "Diastolic Blood Pressure (Observation)" 
Description: "Observation representing the diastolic blood pressure measurement. This data supports antenatal care assessments for hypertension screening and other prenatal complications as part of the 10T minimum service exam."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCDiastoleBP"
* ^status = #active

* category 1..1
* category.coding 1..1
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"

* code 1..1 MS
* code.coding 2..* MS
* code ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "ANCDiastoleBPVS"
* code ^binding.description = "Codes for diastolic blood pressure measurement."
* code from ANCDiastoleBPVS (required)

* value[x] 0..1 MS
* value[x] ^comment = "Value is Quantity."

// valueQuantity
* valueQuantity 0..1
* valueQuantity.unit = "mm[Hg]"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* valueQuantity ^short = "Diastolic blood pressure (mmHg)"