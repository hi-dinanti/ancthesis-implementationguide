Instance: GOFSH-GENERATED-ID-11
InstanceOf: Immunization
Usage: #example
* status = #completed
* primarySource = false
* vaccineCode.coding[0] = $kfa#93006992 "Vaksin Tetanus Toxoid 10 Lf 0.5 mL (BIO FARMA)"
* vaccineCode.coding[+] = $kfa#VG139 "Td"
* vaccineCode.coding[+] = $cvx#35 "tetanus toxoid, adsorbed"
* patient = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* occurrenceDateTime = "2023-08-31T01:14:00+00:00"
* recorded = "2023-08-31T01:14:00+00:00"
* reportOrigin = $immunization-origin#record "Written Record"
* performer.function = $v2-0443#EP "Entering Provider"
* performer.actor = Reference(Practitioner/N10000001)
* reasonCode = $immunization-reason#IM-WUS "Imunisasi Program Rutin Lanjutan Wanita Usia Subur"
* protocolApplied.doseNumberPositiveInt = 1
* lotNumber = "AB0092"
* expirationDate = "2025-11-19"