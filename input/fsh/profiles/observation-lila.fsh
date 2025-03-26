Profile: ANCMUAC
Parent: ANCObservation
Id: ANCMUAC
Title: "Mid Upper Arm Circumference - LiLA (Observation)"
Description: "Observation representing the mid upper arm circumference (MUAC/LiLA) measurement of the patient. This data supports antenatal care assessments, nutritional evaluations, and maternal health risk stratification."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCMUAC"

* category.coding.code = #exam
* category.coding.display = "Exam"

// Enable slicing on code.coding
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slices for SNOMED and ANC custom codes"

// Define slices explicitly
* code.coding contains SNOMED 1..1 MS and ANC 1..1 MS 

// Assign values to the LOINC 
* code.coding[SNOMED].system 1..1
* code.coding[SNOMED].code 1..1
* code.coding[SNOMED].display 1..1
* code.coding[SNOMED].system = "http://snomed.info/sct"
* code.coding[SNOMED].code = #284473002
* code.coding[SNOMED].display = "Mid upper arm circumference"

// Assign values to the 
* code.coding[ANC].system 1..1
* code.coding[ANC].code 1..1
* code.coding[ANC].display 1..1
* code.coding[ANC].system = "http://terminology.kemkes.go.id/CodeSystem/anc-custom-codes"
* code.coding[ANC].code = #ANC.SS.DE3
* code.coding[ANC].display = "Lingkar Lengan Atas (LILA)"

* value[x] 1..1 
* value[x] only Quantity
* value[x] ^short = "Value type is Quantity."
* valueQuantity ^comment = "Mid upper arm circumference measurement"
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

* interpretation.coding 1..1 MS
* interpretation.coding ^slicing.discriminator.type = #value
* interpretation.coding ^slicing.discriminator.path = "code"
* interpretation.coding ^slicing.rules = #closed
* interpretation.coding contains
    kek 0..1 MS and 
    risiko-kek 0..1 MS and
    normal 0..1 MS

* interpretation.coding[kek].system = "http://terminology.kemkes.go.id/CodeSystem/clinical-term"
* interpretation.coding[kek].code = #OI000018
* interpretation.coding[kek].display = "Kurang Energi Kronis (KEK)"
* note ^short = "LiLA <23 cm"

* interpretation.coding[risiko-kek].system = "http://terminology.kemkes.go.id/CodeSystem/clinical-term"
* interpretation.coding[risiko-kek].code = #OI000035
* interpretation.coding[risiko-kek].display = "Risiko Kurang Energi Kronis (KEK)"
* note ^short = "LiLA 23 - <23,5 cm"

* interpretation.coding[normal].system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation.coding[normal].code = #N
* interpretation.coding[normal].display = "Normal"
* note ^short = "LiLA ≥ 23,5 cm"