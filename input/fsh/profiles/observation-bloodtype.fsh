Profile: ANCBloodTypes
Parent: ANCObservation
Id: ANCBloodTypes
Title: "Blood Type (Observation)" 
Description: "Observation representing blood type (ABO antibody) recorded during an antenatal care visit. This data supports maternal health assessment as part of the Indonesian minimum 10T exam"
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCBloodTypes"

* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code.coding 1..* MS
* code.coding.system 0..1
* code.coding.code 0..1
* code.coding.display 0..1
* code.coding.system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding.code = #ANC.B9.DE24
* code.coding.display = "Blood type"

// Define slicing rules for component
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing for Blood Groups"

// Define slices for blood groups
* component contains
    groupA 0..1 MS and
    groupB 0..1 MS and
    groupO 0..1 MS and
    groupAB 0..1 MS

// Group A
* component[groupA].code.coding.system = "http://loinc.org"
* component[groupA].code.coding.code = #882-1
* component[groupA].code.coding.display = "ABO Group"
* component[groupA].valueCodeableConcept.coding.code = #LA19710-5
* component[groupA].valueCodeableConcept.coding.display = "Group A"

// Group B
* component[groupB].code.coding.system = "http://loinc.org"
* component[groupB].code.coding.code = #882-1
* component[groupB].code.coding.display = "ABO Group"
* component[groupB].valueCodeableConcept.coding.code = #LA19709-7
* component[groupB].valueCodeableConcept.coding.display = "Group B"

// Group O
* component[groupO].code.coding.system = "http://loinc.org"
* component[groupO].code.coding.code = #882-1
* component[groupO].code.coding.display = "ABO Group"
* component[groupO].valueCodeableConcept.coding.code = #LA19708-9
* component[groupO].valueCodeableConcept.coding.display = "Group O"

// Group AB
* component[groupAB].code.coding.system = "http://loinc.org"
* component[groupAB].code.coding.code = #882-1
* component[groupAB].code.coding.display = "ABO Group"
* component[groupAB].valueCodeableConcept.coding.code = #LA28449-9
* component[groupAB].valueCodeableConcept.coding.display = "Group AB"