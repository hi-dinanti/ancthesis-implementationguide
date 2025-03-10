// List of codes used for ANC IG scenario for thesis

ValueSet: ANCScenario
Id: ANCScenario
Title: "ANC Scenario-Custom-Code"
Description: "A collection of codes used in thesis scenario for referral of pre-eclampsia patient."

* ^status = #active
* ^experimental = false
* ^immutable = true
* ^version = "1.0.0"

// LOINC Codes
* include codes from system http://loinc.org where concept.code in 
    #systolic
    #diastolic
    #systolicValue
    #diastolicValue

// ANC Custom Codes
* include codes from system http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes where concept.code in 
    #anc-custom

// Observation Categories
* include codes from system http://terminology.hl7.org/CodeSystem/observation-category where concept.code in 
    #survey
    #laboratory
    #vital-signs
    #exam

// SNOMED Codes
* include codes from system http://snomed.info/sct where concept.code in 
    #snomed

// Clinical Terms from MoH (Indonesia)
* include codes from system http://terminology.kemkes.go.id/CodeSystem/clinical-term where concept.code in 
    #kek
    #risiko-kek
    #normal

// Test Results
* include codes from system http://loinc.org where concept.code in 
    #positive
    #negative
    #one_plus
    #two_plus
    #three_plus
    #four_plus

// Serology Test Outcomes
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation where concept.code in 
    #reactive
    #non-reactive
