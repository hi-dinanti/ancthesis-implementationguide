Extension: BirthPlace
Id: BirthPlace
Title: "Birth Place"
Description: "The registered place of birth of the patient. A sytem may use the address.text if they don't store the birthPlace address in discrete elements."
Context: Patient..
* ^meta.lastUpdated = "2025-02-11T05:42:21.1021271+00:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/patient-birthPlace"
* ^status = #active
//* ^date = "2022-02-02T03:23:14.7383287+00:00"
* ^publisher = "Ministry of Health Indonesia"
* . ..1
* . ^short = "Place of Birth for patient"
* . ^definition = "The registered place of birth of the patient. A sytem may use the address.text if they don't store the birthPlace address in discrete elements."
* url = "https://fhir.kemkes.go.id/r4/StructureDefinition/patient-birthPlace" (exactly)
* value[x] 1..
* value[x] only Address
* value[x].extension contains AdministrativeCode named administrativeCode 0..1
// * value[x].extension[administrativeCode].extension contains
//     rt 0..0 and
//     rw 0..0
* value[x].country from $iso3166-1-2_1 (required)
* value[x].country ^short = "Country ISO 3166 2 letter code"