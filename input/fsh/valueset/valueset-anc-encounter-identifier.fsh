ValueSet: ANCEncounterIdentifier
Id: ANCEncounterIdentifier
Title: "ANC Identifier Value Set"
Description: "A value set containing ANC episode of care identifiers."

* ^url = "http://terminology.kemkes.go.id/ValueSet/episodeofcare/ANC"
* ^status = #active
* ^experimental = false
* ^immutable = false
* ^compose.include.system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"

* ^compose.include.concept[+].code = #K1A
* ^compose.include.concept[=].display = "K1A Kunjungan K1 akses"

* ^compose.include.concept[+].code = #K1M
* ^compose.include.concept[=].display = "K1M Kunjungan K1 murni"

* ^compose.include.concept[+].code = #K2
* ^compose.include.concept[=].display = "K2 Kunjungan K2"

* ^compose.include.concept[+].code = #K3
* ^compose.include.concept[=].display = "K3 Kunjungan K3"

* ^compose.include.concept[+].code = #K4
* ^compose.include.concept[=].display = "K4 Kunjungan K4"

* ^compose.include.concept[+].code = #K5
* ^compose.include.concept[=].display = "K5 Kunjungan K5"

* ^compose.include.concept[+].code = #K6
* ^compose.include.concept[=].display = "K6 Kunjungan K6"
