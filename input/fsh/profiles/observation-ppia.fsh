Profile: ANCPPIA
Parent: ANCObservation
Id: ANCPPIA
Title: "Prenatal Screening PPIA (Observation)" 
Description: "Observation representing the screening results for Hepatitis B, HIV, and Syphilis (VDRL) as part of the Prevention of Mother-to-Child Transmission of HIV (PPIA) program. This program aims to prevent and control the transmission of these infections from mother to child during pregnancy, childbirth, and breastfeeding." 
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCPPIA"

* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

// Define six distinct components
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing for HepB, HIV, and Syphillis (VDRL)"

* component contains hepBpos 0..1 and hepBneg 0..1 and hivpos 0..1 and hivneg 0..1 and vdrlpos 0..1 and vdrlneg 0..1
* component.value[x] only CodeableConcept

// Hepatitis B Positive Component
* component[hepBpos].code.coding.system = "http://loinc.org"
* component[hepBpos].code.coding.code = #22322-2
* component[hepBpos].code.coding.display = "Hepatitis B virus surface antigen [Presence] in Serum or Plasma"
* component[hepBpos].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* component[hepBpos].valueCodeableConcept.coding.code = #11214006
* component[hepBpos].valueCodeableConcept.coding.display = "Reactive"

// Hepatitis B Negative Component
* component[hepBneg].code.coding.system = "http://loinc.org"
* component[hepBneg].code.coding.code = #22322-2
* component[hepBneg].code.coding.display = "Hepatitis B virus surface antigen [Presence] in Serum or Plasma"
* component[hepBneg].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* component[hepBneg].valueCodeableConcept.coding.code = #131194007
* component[hepBneg].valueCodeableConcept.coding.display = "Non-Reactive"

// HIV Positive Component
* component[hivpos].code.coding.system = "http://loinc.org"
* component[hivpos].code.coding.code = #68961-2
* component[hivpos].code.coding.display = "HIV 1 Ab [Presence] in Serum, Plasma or Blood by Rapid immunoassay"
* component[hivpos].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* component[hivpos].valueCodeableConcept.coding.code = #11214006
* component[hivpos].valueCodeableConcept.coding.display = "Reactive"

// HIV Negative Component
* component[hivneg].code.coding.system = "http://loinc.org"
* component[hivneg].code.coding.code = #68961-2
* component[hivneg].code.coding.display = "HIV 1 Ab [Presence] in Serum, Plasma or Blood by Rapid immunoassay"
* component[hivneg].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* component[hivneg].valueCodeableConcept.coding.code = #131194007
* component[hivneg].valueCodeableConcept.coding.display = "Non-Reactive"

// VDRL (Syphilis) Positive Component
* component[vdrlpos].code.coding.system = "http://loinc.org"
* component[vdrlpos].code.coding.code = #14904-7
* component[vdrlpos].code.coding.display = "Reagin Ab [Presence] in Specimen by VDRL"
* component[vdrlpos].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* component[vdrlpos].valueCodeableConcept.coding.code = #11214006
* component[vdrlpos].valueCodeableConcept.coding.display = "Reactive"

// VDRL (Syphilis) Negative Component
* component[vdrlneg].code.coding.system = "http://loinc.org"
* component[vdrlneg].code.coding.code = #14904-7
* component[vdrlneg].code.coding.display = "Reagin Ab [Presence] in Specimen by VDRL"
* component[vdrlneg].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* component[vdrlneg].valueCodeableConcept.coding.code = #131194007
* component[vdrlneg].valueCodeableConcept.coding.display = "Non-Reactive"