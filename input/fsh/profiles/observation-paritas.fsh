Profile: ANCParitas
Parent: ANCObservation
Id: ANCParitas
Title: "Parity (Observation)"
Description: "Observation representing number of times a woman has given birth to a viable offspring (parity)."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCParitas"
* ^status = #active
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #survey
* category.coding.display = "Survey"

* code 1..1
* code.coding 2..*
* code.coding from ANCParitasVS (required)

* value[x] 1..1 
* value[x] only integer
* value[x] ^short = "Value type is integer."
* valueInteger 1..1 MS 