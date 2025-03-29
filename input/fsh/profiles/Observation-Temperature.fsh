Profile: ANCTemperature
Parent: ANCObservation
Id: ANCTemperature
Title: "Body Temperature (Observation)" 
Description: "Observation representing the body temperature measurement. This data supports antenatal care assessments for maternal health monitoring as part of the 10T minimum service exam."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCTemperature"
* ^status = #active

* category 1..1
* category.coding 1..1
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"

* code 1..1 MS
* code ^binding.strength = #required
* code ^binding.valueSet = "https://fhir.pwskia.id/r4/ValueSet/ANCTemperatureVS"

* value[x] 0..1 MS
* value[x] ^comment = "Value is Quantity."

* valueQuantity 0..1
* valueQuantity.unit = "°C"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel
* valueQuantity ^short = "Body temperature (°C)"