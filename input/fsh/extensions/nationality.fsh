Extension: nationality
Parent: $Extension
Id: patient-nationality
Title: "nationality"
Description: "The nationality of the patient."
Context: Patient
* ^status = #draft
* ^date = "2023-05-12T04:00:39.3091812+00:00"
* ^publisher = "HL7"
* . 0..*
* . ^short = "Nationality"
* . ^definition = "The nationality of the patient."
* extension contains
    code 0..1 and
    period 0..1
* extension[code] only Extension
* extension[code] ^short = "Nationality Code"
* extension[code] ^definition = "Code representing nationality of patient."
* extension[code].url only uri
* extension[code].value[x] 1..
* extension[code].value[x] only CodeableConcept
* extension[period] only Extension
* extension[period] ^short = "Nationality Period"
* extension[period] ^definition = "Period when nationality was effective."
* extension[period].url only uri
* extension[period].value[x] 1..
* extension[period].value[x] only Period