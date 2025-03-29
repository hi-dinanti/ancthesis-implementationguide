Instance: ANCEncounterFinished
InstanceOf: ANCEncounter
Title: "ANC Encounter Example - K1 Visit (Finished)"
Description: "Example of an antenatal care encounter for Aisyah's K1 visit."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* identifier[K1A].system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K1A].value = "K1A"

* status = #finished  // Updated status to 'finished'

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "Ambulatory"

* episodeOfCare.reference = "EpisodeOfCare/{{EpisodeOfCare_uuid}}"

* subject.reference = "Patient/100000030006"
* subject.display = "Aisyah"

* participant.type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant.type.coding.code = #ATND
* participant.type.coding.display = "Attender"
* participant.individual.reference = "Practitioner/N10000001"
* participant.individual.display = "Dokter Bronsig"

* period.start = "2023-08-31T00:00:00+00:00"

* location.location.reference = "Location/c87e0ca7-badc-4c60-9080-277aaaf27a88"
* location.location.display = "Ruang Poli ANC, Departemen KIA, Lantai 2, Gedung Utama"

* statusHistory[+].status = #arrived
* statusHistory[=].period.start = "2023-08-31T00:00:00+00:00"
* statusHistory[=].period.end = "2023-08-31T01:00:00+00:00"

* statusHistory[+].status = #in-progress
* statusHistory[=].period.start = "2023-08-31T01:00:00+00:00"
* statusHistory[=].period.end = "2023-08-31T04:05:00+00:00"

* statusHistory[+].status = #finished  // Updated final status
* statusHistory[=].period.start = "2023-08-31T04:05:00+00:00"
* statusHistory[=].period.end = "2023-08-31T04:10:00+00:00"

* hospitalization.dischargeDisposition.coding.system = "http://terminology.hl7.org/CodeSystem/discharge-disposition"
* hospitalization.dischargeDisposition.coding.code = #oth
* hospitalization.dischargeDisposition.coding.display = "other-hcf"
* hospitalization.dischargeDisposition.text = "Rujukan ke RSUP Fatmawati"

* serviceProvider.reference = "Organization/{{Org_id}}"

// Condition Reference (Pre-eclampsia)
* diagnosis.condition.reference = "Condition/{{Condition_uuid}}"
* diagnosis.condition.display = "Pre-eclampsia, unspecified"
* diagnosis.use.coding.system = "http://terminology.hl7.org/CodeSystem/diagnosis-role"
* diagnosis.use.coding.code = #DD
* diagnosis.use.coding.display = "Discharge diagnosis"
* diagnosis.rank = 2