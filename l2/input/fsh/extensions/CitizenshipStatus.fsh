Extension: CitizenshipStatus
Id: CitizenshipStatus
Description: "Information that describe whether the patient is an Indonesian citizen or a foreign citizen by law."
Context: Patient
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/citizenshipStatus"
// * ^meta.lastUpdated = "03/04/2022 03:53:33"
// * ^date = "05/12/2023 03:39:44"
* value[x] only code
* value[x] ^code[0].version = "1"
* value[x] ^code[=] = $v1-0101#I "WNI"
* value[x] ^code[+].version = "1"
* value[x] ^code[=] = $v1-0101#A "WNA"