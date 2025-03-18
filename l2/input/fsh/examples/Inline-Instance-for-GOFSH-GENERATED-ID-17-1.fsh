Instance: Inline-Instance-for-GOFSH-GENERATED-ID-17-1
InstanceOf: Encounter
Usage: #inline
* identifier.system = "http://sys-ids.kemkes.go.id/encounter/{{Org_id}}"
* identifier.value = "P20240001"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/100000030006) "Jane Smith"
* participant.type = $v3-ParticipationType#ATND "attender"
* participant.individual = Reference(Practitioner/N10000001) "Dokter Bronsig"
* period.start = "2023-08-31T00:00:00+00:00"
* period.end = "2023-08-31T02:00:00+00:00"
* location.location = Reference(Location/c87e0ca7-badc-4c60-9080-277aaaf27a88) "Ruang Poli ANC, Departemen KIA, Lantai 2, Gedung Utama"
* diagnosis[0].condition = Reference(urn:uuid:09cc2be2-a9f7-40d2-966e-f22c7d0a3095) "Tuberculosis of lung, confirmed by sputum microscopy with or without culture"
* diagnosis[=].use = $diagnosis-role#DD "Discharge diagnosis"
* diagnosis[=].rank = 1
* diagnosis[+].condition = Reference(urn:uuid:0afdc07e-b7ff-4011-aaef-8d32fefe9ea6) "Mild protein-calorie malnutrition"
* diagnosis[=].use = $diagnosis-role#DD "Discharge diagnosis"
* diagnosis[=].rank = 2
* statusHistory[0].status = #arrived
* statusHistory[=].period.start = "2023-08-31T00:00:00+00:00"
* statusHistory[=].period.end = "2023-08-31T01:00:00+00:00"
* statusHistory[+].status = #in-progress
* statusHistory[=].period.start = "2023-08-31T01:00:00+00:00"
* statusHistory[=].period.end = "2023-08-31T02:00:00+00:00"
* statusHistory[+].status = #finished
* statusHistory[=].period.start = "2023-08-31T02:00:00+00:00"
* statusHistory[=].period.end = "2023-08-31T02:00:00+00:00"
* hospitalization.dischargeDisposition = $discharge-disposition#home "Home"
* hospitalization.dischargeDisposition.text = "Anjuran dokter untuk pulang dan kontrol kembali 1 bulan setelah minum obat"
* serviceProvider = Reference(Organization/{{Org_id}})
* episodeOfCare = Reference(urn:uuid:8e9e5e3b-52a1-42a0-b39e-7cc67db3ad17)