Extension: CitizenshipStatus
Parent: $Extension
Id: citizenshipStatus
Description: "Information that describe whether the patient is an Indonesian citizen or a foreign citizen by law."
Context: Patient
* ^meta.lastUpdated = "2022-03-04T03:53:33.924+00:00"
* ^date = "2023-05-12T03:39:44.9696723+00:00"
* value[x] only code
* value[x] ^code[0].version = "1"
* value[x] ^code[=] = $v1-0101#I "WNI"
* value[x] ^code[+].version = "1"
* value[x] ^code[=] = $v1-0101#A "WNA"