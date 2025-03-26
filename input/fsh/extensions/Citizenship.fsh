Extension: Citizenship
Id: Citizenship
Title: "citizenship"
Description: "The patient's legal status as citizen of a country."
Context: Patient
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/patient-citizenship"
* ^status = #active
// * ^date = "05/12/2023 04:00:39"
* ^publisher = "Ministry of Health Indonesia"
* . 0..*
* . ^short = "Nation(s) where the patient claims citizenship"
* . ^definition = "The patient's legal status as citizen of a country."
* extension contains
    code 0..1 and
    period 0..1
* extension[code] only Extension
* extension[code] ^short = "Nation code of citizenship"
* extension[code] ^definition = "Nation code representing the citizenship of patient."
* extension[code].url only uri
* extension[code].value[x] 1..
* extension[code].value[x] only CodeableConcept
* extension[period] only Extension
* extension[period] ^short = "Time period of citizenship"
* extension[period] ^definition = "Period when citizenship was effective."
* extension[period].url only uri
* extension[period].value[x] 1..
* extension[period].value[x] only Period