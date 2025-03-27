Profile: ANCAbortus
Parent: ANCObservation
Id: ANCAbortus
Title: "Abortion (Observation)"
Description: "Observation representing number of miscarriages and/or abortions."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCAbortus"
* ^status = #active
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #survey
* category.coding.display = "Survey"

* code 1..1
* code.coding 2..*
* code.coding from ANCAbortusVS (required)

* value[x] 1..1 
* value[x] only integer
* value[x] ^short = "Value type is integer."
* valueInteger 1..1 MS 