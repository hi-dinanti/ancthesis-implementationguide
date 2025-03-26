Profile: ANCHeight
Parent: ANCObservation
Id: ANCHeight
Title: "Height (Observation)"
Description: "Observation representing the body height of the patient. This data supports antenatal care assessments and general health evaluations."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCHeight"

* category.coding.code = #exam
* category.coding.display = "Exam"

// Enable slicing on code.coding
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slices for LOINC and ANC custom codes"

// Define slices explicitly
* code.coding contains LOINC 1..1 MS and ANC 1..1 MS 

// Assign values to the LOINC 
* code.coding[LOINC].system 1..1
* code.coding[LOINC].code 1..1
* code.coding[LOINC].display 1..1
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #8302-2
* code.coding[LOINC].display = "Body height"

// Assign values to the 
* code.coding[ANC].system 1..1
* code.coding[ANC].code 1..1
* code.coding[ANC].display 1..1
* code.coding[ANC].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[ANC].code = #ANC.B8.DE1
* code.coding[ANC].display = "Height"

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