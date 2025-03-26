Profile: ANCRhesus
Parent: ANCObservation
Id: ANCRhesus
Title: "Rhesus (Observation)" 
Description: "Observation representing rhesus type (Rh factor) recorded during an antenatal care visit. This data supports maternal health assessment as part of the Indonesian minimum 10T exam"
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCRhesus"

* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code.coding 1..* MS
* code.coding.system 0..1
* code.coding.code 0..1
* code.coding.display 0..1
* code.coding.system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding.code = #ANC.B9.DE29
* code.coding.display = "Rh factor"

// Define slicing rules for component
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing for Rh typing (Positive and Negative)"

// Define slices for Rhesus
* component contains
    rhpos 0..1 and 
    rhneg 0..1

// Rh Positive Component
* component[rhpos].code.coding.system = "http://loinc.org"
* component[rhpos].code.coding.code = #10331-7
* component[rhpos].code.coding.display = "Rh [Type] in Blood"
* component[rhpos].valueCodeableConcept.coding.system = "http://loinc.org"
* component[rhpos].valueCodeableConcept.coding.code = #LA6576-8
* component[rhpos].valueCodeableConcept.coding.display = "Positive"

// Rh Negative Component
* component[rhneg].code.coding.system = "http://loinc.org"
* component[rhneg].code.coding.code = #10331-7
* component[rhneg].code.coding.display = "Rh [Type] in Blood"
* component[rhneg].valueCodeableConcept.coding.system = "http://loinc.org"
* component[rhneg].valueCodeableConcept.coding.code = #LA6577-6
* component[rhneg].valueCodeableConcept.coding.display = "Negative"