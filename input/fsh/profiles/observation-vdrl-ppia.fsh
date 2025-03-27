Profile: PPIAVDRL
Parent: ANCObservation
Id: PPIAVDRL
Title: "Prenatal Screening - VDRL"
Description: "Observation capturing prenatal VDRL test results in accordance to Ministry of Health regulation."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/PPIAVDRL"
* ^status = #active

* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory Test"

* code 1..1
* code.coding 2..*
* code.coding from PPIAVDRLVS (required)

* value[x] ^comment = "Value can be quantity or CodeableConcept"
* valueCodeableConcept from PPIAResultsVS (extensible)
* valueQuantity 0..1