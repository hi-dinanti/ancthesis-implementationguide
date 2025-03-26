Profile: ANCGPA
Parent: ANCObservation
Id: ANCGPA
Title: "Obstetric Status in GPA (Observation)" 
Description: "Observation representing obstetric [GPA#] status of antenatal care patient as reported in a survey. Gravida represents total number of pregnancies, parity represent number of times a woman has given birth to a viable offspring (parity), abortus represent the number of miscarriages and/or abortions."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCGPA"
* ^status = #draft
* ^experimental = true
* category.coding.code = #survey
* category.coding.display = "Survey"

// Slicing definition for components
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing for Gravida, Paritas, and Abortus"

* component contains
    gravida 0..1 MS and
    paritas 0..1 MS and
    abortus 0..1 MS

// Gravida
* component[gravida].code.coding.system = "http://loinc.org"
* component[gravida].code.coding.code = #11996-6
* component[gravida].code.coding.display = "[#] Pregnancies"
* component[gravida].valueInteger 0..1

// Paritas
* component[paritas].code.coding.system = "http://loinc.org"
* component[paritas].code.coding.code = #11977-6
* component[paritas].code.coding.display = "[#] Parity"
* component[paritas].valueInteger 0..1

// Abortus
* component[abortus].code.coding.system = "http://loinc.org"
* component[abortus].code.coding.code = #69043-8
* component[abortus].code.coding.display = "Other pregnancy outcomes #"
* component[abortus].valueInteger 0..1