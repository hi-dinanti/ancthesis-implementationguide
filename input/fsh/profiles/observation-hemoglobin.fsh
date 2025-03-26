Profile: ANCHemoglobin
Parent: ANCObservation
Id: ANCHemoglobin
Title: "Hemoglobin (Observation)"
Description: "Observation representing blood hemoglobin levels recorded during an antenatal care visit. This data supports anemia screening and maternal health assessment."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCHemoglobin"
* ^status = #active
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code 1..1
* code.coding 2..*
* code.coding from ANCHemoglobinVS (required)

* value[x] 1..1 
* value[x] only Quantity
* value[x] ^short = "Value type is quantity."
* valueQuantity 1..1 MS 
* valueQuantity ^short = "Blood hemoglobin concentration"
* valueQuantity.value 1..1
* valueQuantity.value only decimal
* valueQuantity.unit = "g/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #g/dL