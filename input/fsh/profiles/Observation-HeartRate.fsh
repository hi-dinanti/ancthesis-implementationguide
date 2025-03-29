Profile: ANCHeartRate
Parent: ANCObservation
Id: ANCHeartRate
Title: "Heart Rate (Observation)" 
Description: "Observation representing the heart rate measurement. This data supports antenatal care assessments for maternal health monitoring as part of the 10T minimum service exam."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCHeartRate"
* ^status = #active

* category 1..1
* category.coding 1..1
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"

* code 1..1 MS
* code ^binding.strength = #required
* code ^binding.valueSet = "https://fhir.pwskia.id/r4/ValueSet/ANCHeartRateVS"

* value[x] 0..1 MS
* value[x] ^comment = "Value is Quantity."

* valueQuantity 0..1
* valueQuantity.unit = "beats/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* valueQuantity ^short = "Heart rate (beats per minute)"