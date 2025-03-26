Profile: ANCRhesus
Parent: ANCObservation
Id: ANCRhesus
Title: "Rhesus (Observation)" 
Description: "Observation representing rhesus type (Rh factor) recorded during an antenatal care visit. This data supports maternal health assessment as part of the Indonesian minimum 10T exam"
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCRhesus"
* ^status = #active
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code.coding 2..* MS
* code.coding.system 0..1
* code.coding.code 0..1
* code.coding.display 0..1
* code.coding.system = "http://loinc.org"
* code.coding.code = #LA6576-8
* code.coding.display = "Rh [Type] in Blood"

* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding 1..1
* valueCodeableConcept from LabNominalResultVS (required)
* valueCodeableConcept ^binding.description = "Rhesus factor must be either Positive or Negative."