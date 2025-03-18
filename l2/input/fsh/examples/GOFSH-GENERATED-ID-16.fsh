Instance: GOFSH-GENERATED-ID-16
InstanceOf: ServiceRequest
Usage: #example
* identifier.system = "http://sys-ids.kemkes.go.id/servicerequest/{{Org_id}}"
* identifier.value = "00001"
* status = #active
* intent = #original-order
* priority = #routine
* code = $sct#3457005 "Patient referral (procedure)"
* code.text = "Pemeriksaan Sputum BTA"
* subject = Reference(Patient/100000030006)
* encounter = Reference(Encounter/{{Encounter_uuid}}) "Kunjungan Jane Smith di hari Kamis, 31 Agustus 2023"
* occurrenceDateTime = "2023-08-31T04:25:00+00:00"
* requester = Reference(Practitioner/N10000001) "Dokter Bronsig"
* performer = Reference(Practitioner/N10000005) "Fatma"
* reasonCode = $icd-10#A15.0 "Tuberculosis of lung, confirmed by sputum microscopy with or without culture"
* reasonCode.text = "Periksa jika ada kemungkinan Tuberculosis"
* locationCode = $v3-RoleCode#AMB "Ambulance"
* patientInstruction = "Rujukan ke RSUP Fatmawati. Dalam keadaan darurat dapat menghubungi hotline Fasyankes di nomor 14045"