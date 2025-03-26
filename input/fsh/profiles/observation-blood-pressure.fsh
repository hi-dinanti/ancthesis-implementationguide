Profile: ANCBloodPressure
Parent: ANCObservation
Id: ANCBloodPressure
Title: "Blood Pressure (Observation)"
Description: "Observation representing systolic and diastolic blood pressure measurements recorded during an antenatal care visit. This data supports hypertension screening and maternal health assessment."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCBloodPressure"

* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"
* ^status = #draft
* ^experimental = true

// Enable slicing on code.coding
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slices for LOINC and ANC custom codes"

// Define ANC slices explicitly
* code.coding contains 
    systoleANC 0..1 MS and 
    diastoleANC 0..1 MS

* code.coding[systoleANC].system 0..1
* code.coding[systoleANC].code 0..1
* code.coding[systoleANC].display 0..1
* code.coding[systoleANC].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[systoleANC].code = #ANC.B8.DE17
* code.coding[systoleANC].display = "Systolic blood pressure"

* code.coding[diastoleANC].system 0..1
* code.coding[diastoleANC].code 0..1
* code.coding[diastoleANC].display 0..1
* code.coding[diastoleANC].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[diastoleANC].code = #ANC.B8.DE19
* code.coding[diastoleANC].display = "Diastolic blood pressure"

// Define slicing on component
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing for systolic and diastolic blood pressure"

// Define slices for systolic and diastolic blood pressure
* component contains
    systole 1..1 MS and
    diastole 1..1 MS

// Define systolic blood pressure component
* component[systole].code.coding.system = "http://loinc.org"
* component[systole].code.coding.code = #8480-6
* component[systole].code.coding.display = "Systolic blood pressure"
* component[systole].value[x] only Quantity
* component[systole].valueQuantity 0..1
* component[systole].valueQuantity.unit = "mm[Hg]"
* component[systole].valueQuantity.system = "http://unitsofmeasure.org"
* component[systole].valueQuantity.code = #mm[Hg]

// Define diastolic blood pressure component
* component[diastole].code.coding.system = "http://loinc.org"
* component[diastole].code.coding.code = #8462-4
* component[diastole].code.coding.display = "Diastolic blood pressure"
* component[diastole].value[x] only Quantity
* component[diastole].valueQuantity 0..1
* component[diastole].valueQuantity.unit = "mm[Hg]"
* component[diastole].valueQuantity.system = "http://unitsofmeasure.org"
* component[diastole].valueQuantity.code = #mm[Hg]
