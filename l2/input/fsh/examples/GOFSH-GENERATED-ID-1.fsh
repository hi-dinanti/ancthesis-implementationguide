Instance: GOFSH-GENERATED-ID-1
InstanceOf: Encounter
Usage: #example
* identifier[0].system = "http://sys-ids.kemkes.go.id/encounter/{{Org_id}}"
* identifier[=].value = "P20240005"
* identifier[+].system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[=].value = "K1A"
* status = #arrived
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/100000030006) "Jane Smith"
* participant.type = $v3-ParticipationType#ATND "attender"
* participant.individual = Reference(Practitioner/N10000001) "Dokter Bronsig"
* period.start = "2023-08-31T00:00:00+00:00"
* location.location = Reference(Location/c87e0ca7-badc-4c60-9080-277aaaf27a88) "Ruang Poli ANC, Departemen KIA, Lantai 2, Gedung Utama"
* statusHistory.status = #arrived
* statusHistory.period.start = "2023-08-31T00:00:00+00:00"
* serviceProvider = Reference(Organization/{{Org_id}})