Profile: ANCRandomBloodSugar
Parent: ANCObservation
Id: ANCRandomBloodSugar
Title: "RandomBloodSugar (Observation)" 
Description: "Observation representing random blood sugar (Gula Darah Sewaktu) levels recorded during an antenatal care visit. This data supports gestational diabetes screening and maternal health assessment as part of the Indonesian minimum 10T exam."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCRandomBloodSugar"

* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code.coding 1..* MS

// Enable slicing on code.coding
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #closed
* code.coding contains LOINC 0..1 MS and ANC 0..1 MS

// Assign values to the LOINC 
* code.coding[LOINC].system 1..1
* code.coding[LOINC].code 1..1
* code.coding[LOINC].display 1..1
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #74774-1
* code.coding[LOINC].display = "Glucose [Mass/volume] in Serum, Plasma or Blood"

// Assign values to the 
* code.coding[ANC].system 1..1
* code.coding[ANC].code 1..1
* code.coding[ANC].display 1..1
* code.coding[ANC].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[ANC].code = #ANC.B9.DE159
* code.coding[ANC].display = "Blood glucose test conducted"

* value[x] 0..1 MS 
* value[x] ^comment = "Value can be Quantity or CodeableConcept. ValueCodeableConcept refers to .component."
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