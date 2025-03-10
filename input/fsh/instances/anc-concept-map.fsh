ConceptMap: ANCConceptMap
Id: anc-concept-map
Title: "Antenatal Care Concept Map"
Description: "Mapping ANC visit concepts to LOINC and SNOMED CT."

* ^url = "http://example.org/fhir/ConceptMap/anc-concept-map"
* ^status = #active
* ^experimental = false

// Mapping Blood Pressure to LOINC & SNOMED
* "bloodPressure" -> "85354-9" "Blood pressure panel" // LOINC
* "bloodPressure" -> "75367002" "Blood pressure measurement" // SNOMED

// Mapping Proteinuria test to LOINC
* "proteinuria" -> "5802-4" "Protein [Presence] in Urine" // LOINC

// Mapping Pre-eclampsia diagnosis to SNOMED
* "preEclampsia" -> "387713003" "Pre-eclampsia" // SNOMED CT

// Mapping Referral Reason to SNOMED
* "referralReason" -> "183932001" "Referred for hospital admission" // SNOMED CT
