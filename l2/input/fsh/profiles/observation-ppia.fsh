Profile: ANCPPIA
Parent: $Observation
Id: ANCPPIA
Title: "Prenatal Screening PPIA (Observation)" 
Description: "Observation representing the screening results for Hepatitis B, HIV, and Syphilis (VDRL) as part of the Prevention of Mother-to-Child Transmission of HIV (PPIA) program. This program aims to prevent and control the transmission of these infections from mother to child during pregnancy, childbirth, and breastfeeding." 
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/Observation"
* ^status = #draft
* ^experimental = true
* category 0..1 
* category ^comment = "Classification of  type of observation. A code that classifies the general type of observation being made."
* category from http://hl7.org/fhir/ValueSet/observation-category (preferred) 
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"
* category ^comment = "In addition to the required category valueset, this element allows various categorization schemes based on the owner’s definition of the category and effectively multiple categories can be used at once.  The level of granularity is defined by the category concepts in the value set."
* category ^requirements = "Used for filtering what observations are retrieved and displayed."
* category ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."

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

* subject 0..1 MS 
* subject only Reference($pwskia-patient) //Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Location) "Who and/or what the observation is about. The patient, or group of patients, location, or device this observation is about and into whose record the observation is placed. If the actual focus of the observation is different from the subject (or a sample of, part, or region of the subject), the `focus` element or the `code` itself specifies the actual focus of the observation."
* subject ^comment = "One would expect this element to be a cardinality of 1..1. The only circumstance in which the subject can be missing is when the observation is made by a device that does not know the patient. In this case, the observation SHALL be matched to a patient through some context/channel matching technique, and at this point, the observation should be updated."
* subject ^requirements = "Observations have no value if you don't know who or what they're about."

* note 0..1 // Annotation "Comments about the observation. Comments about the observation or the results."
* note ^comment = "May include general statements about the observation, or statements about significant, unexpected or unreliable results values, or information about its source when relevant to its interpretation."
* note ^requirements = "Need to be able to provide free text additional information."