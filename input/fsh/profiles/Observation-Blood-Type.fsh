Profile: ANCBloodTypes
Parent: ANCObservation
Id: ANCBloodTypes
Title: "Blood Type (Observation)" 
Description: "Observation representing blood type (ABO antibody) recorded during an antenatal care visit. This data supports maternal health assessment as part of the Indonesian minimum 10T exam"
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCBloodTypes"
* ^status = #active
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code.coding 1..* MS
* code.coding.system 0..1
* code.coding.code 0..1
* code.coding.display 0..1
* code.coding.system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding.code = #ANC.B9.DE24
* code.coding.display = "Blood type"

// Define value binding for blood groups
* valueCodeableConcept from BloodGroupVS (required)