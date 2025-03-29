Profile: ANCRandomBloodSugar
Parent: ANCObservation
Id: ANCRandomBloodSugar
Title: "Random Blood Sugar (Observation)" 
Description: "Observation representing random blood sugar (Gula Darah Sewaktu) levels recorded during an antenatal care visit. This data supports gestational diabetes screening and maternal health assessment as part of the Indonesian minimum 10T exam."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCRandomBloodSugar"
* ^status = #active

* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code 1..1 MS
* code.coding 2..* MS
* code ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "ANCGlucoseLabVS"
* code ^binding.description = "Codes for glucose laboratory test in ANC."
* code from ANCGlucoseLabVS (required)

* value[x] 0..1 MS 
* value[x] ^comment = "Value can be Quantity or CodeableConcept. ValueCodeableConcept refers to .component."
* valueCodeableConcept 0..1
* valueQuantity 0..1
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg/dL
* valueQuantity ^short = "Protein concentration in urine (mg/dL)"

// Reference Range
* referenceRange 0..*
* referenceRange.low 0..1
* referenceRange.low.unit = "mg/dL"
* referenceRange.low.system = "http://unitsofmeasure.org"
* referenceRange.low.code = #mg/dL
* referenceRange.low.value = 70
* referenceRange.high 0..1
* referenceRange.high.unit = "mg/dL"
* referenceRange.high.system = "http://unitsofmeasure.org"
* referenceRange.high.code = #mg/dL
* referenceRange.high.value = 140
* referenceRange ^short = "Reference range for normal blood glucose levels."

// Interpretation
* interpretation 0..*
* interpretation ^binding.strength = #extensible
* interpretation ^binding.valueSet = "http://hl7.org/fhir/ValueSet/observation-interpretation"
* interpretation ^short = "Clinical interpretation of the result."