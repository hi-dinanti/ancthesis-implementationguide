Profile: ANCCurrentWeight
Parent: ANCObservation
Id: ANCCurrentWeight
Title: "Current Weight (Observation)"
Description: "Observation representing the body weight of the patient. This data supports antenatal care assessments and general health evaluations."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCCurrentWeight"
* ^status = #active
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #exam
* category.coding.display = "Exam"

* code 1..1 MS
* code.coding 2..* MS
* code from ANCCurrentWeightVS (extensible)

* value[x] 1..1
* value[x] only Quantity
* value[x] ^short = "Value type is quantity."
* value[x] ^comment = "Measurement of weight"
* valueQuantity 1..1 MS
* valueQuantity ^short = "Body weight"
* valueQuantity.value 1..1
* valueQuantity.value only decimal
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg