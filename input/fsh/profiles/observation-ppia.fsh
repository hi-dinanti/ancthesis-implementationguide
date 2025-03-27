Profile: ANCPPIA
Parent: ANCObservation
Id: ANCPPIA
Title: "Prenatal Screening PPIA (Observation)" 
Description: "Observation representing the screening results for Hepatitis B, HIV, and Syphilis (VDRL) as part of the Prevention of Mother-to-Child Transmission of HIV (PPIA) program. This program aims to prevent and control the transmission of these infections from mother to child during pregnancy, childbirth, and breastfeeding." 
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCPPIA"
* ^status = #draft
* ^experimental = true

* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

// Slicing definition for components
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing for Hepatitis B, HIV, and Syphillis"

* component contains
    hepb 1..1 MS and
    hiv 1..1 MS and
    syphillis 1..1 MS

* component[hepb] ^type.profile = "https://fhir.pwskia.id/r4/StructureDefinition/PPIAHepB"
* component[hiv] ^type.profile = "https://fhir.pwskia.id/r4/StructureDefinition/PPIAHIV"
* component[syphillis] ^type.profile = "https://fhir.pwskia.id/r4/StructureDefinition/PPIAVDRL"