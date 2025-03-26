Profile: ANCHeight
Parent: ANCObservation
Id: ANCHeight
Title: "Height (Observation)"
Description: "Observation representing the body height of the patient. This data supports antenatal care assessments and general health evaluations."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCHeight"
* ^status = #active
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #exam
* category.coding.display = "Exam"

* code 1..1
* code.coding 2..*
* code.coding from ANCHeightVS (required)

* value[x] 1..1 
* value[x] only Quantity
* value[x] ^short = "Value type is quantity."
* value[x] ^comment = "Measurement of height"
* valueQuantity 1..1 MS 
* valueQuantity ^short = "Body height"
* valueQuantity.value 1..1
* valueQuantity.value only decimal
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm