Profile: ANCLMP
Parent: ANCObservation
Id: ANCLMP
Title: "Last menstrual period (Observation)"
Description: "Observation representing the start date of the last menstrual period (LMP) as reported in a survey. This data supports gestational age estimation and antenatal care assessments."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCLMP"
* ^status = #active
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #survey
* category.coding.display = "Survey"

* code 1..1
* code.coding 2..*
* code.coding from ANCLMPVS (required)

* value[x] 1..1 
* value[x] only dateTime
* value[x] ^short = "Value type is dateTIme."
* value[x] ^comment = "Date of last menstrual period (LMP)"
* valueDateTime 1..1 MS 