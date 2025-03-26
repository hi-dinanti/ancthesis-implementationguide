Profile: ANCLMP
Parent: ANCObservation
Id: ANCLMP
Title: "Last menstrual period (Observation)"
Description: "Observation representing the start date of the last menstrual period (LMP) as reported in a survey. This data supports gestational age estimation and antenatal care assessments."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCLMP"

* category.coding.code = #survey
* category.coding.display = "Survey"

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
* code.coding[LOINC].code = #8665-2
* code.coding[LOINC].display = "Last menstrual period start date"

// Assign values to the 
* code.coding[ANC].system 1..1
* code.coding[ANC].code 1..1
* code.coding[ANC].display 1..1
* code.coding[ANC].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[ANC].code = #ANC.B6.DE14
* code.coding[ANC].display = "Last menstrual period (LMP) date"

* value[x] 1..1 
* value[x] only dateTime
* value[x] ^short = "Value type is dateTIme."
* value[x] ^comment = "Date of last menstrual period (LMP)"
* valueDateTime 1..1 MS 