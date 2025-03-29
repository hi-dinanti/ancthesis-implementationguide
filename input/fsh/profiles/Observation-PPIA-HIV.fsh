Profile: PPIAHIV
Parent: ANCObservation
Id: PPIAHIV
Title: "Prenatal Screening - HIV"
Description: "Observation capturing prenatal HIV test results in accordance to Ministry of Health regulation."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/PPIAHIV"
* ^status = #active

* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory Test"

* code 1..1
* code.coding 2..*
* code.coding from PPIAHIVVS (required)

* value[x] ^comment = "Value can be quantity or CodeableConcept"
* valueCodeableConcept from PPIAResultsVS (extensible)
* valueQuantity