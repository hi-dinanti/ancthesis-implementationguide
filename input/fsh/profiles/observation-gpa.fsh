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
    gravida 1..1 MS and
    paritas 1..1 MS and
    abortus 1..1 MS

* component[gravida] ^type.profile = "https://fhir.pwskia.id/r4/StructureDefinition/ANCGravida"
* component[paritas] ^type.profile = "https://fhir.pwskia.id/r4/StructureDefinition/ANCParitas"
* component[abortus] ^type.profile = "https://fhir.pwskia.id/r4/StructureDefinition/ANCAbortus"