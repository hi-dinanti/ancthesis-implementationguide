Instance: ServiceRequest-Example
InstanceOf: ANCServiceRequest
Title: "ANC Referral Example (ServiceRequest)"
Description: "Example of a service request for antenatal care referral to hospital."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/servicerequest/{{Org_id}}"
* identifier.value = "00001"
* status = #active
* intent = #original-order
* priority = #routine

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #185389009
* code.coding.display = "Follow-up visit (procedure)"
* code.text = "Kontrol rutin regimen TB bulan ke-2"

* subject.reference = "Patient/100000030007"
* subject.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"
* encounter.display = "Kunjungan Aisyah di hari Kamis, 31 Agustus 2023"

* occurrenceDateTime = "2023-08-31T04:25:00+00:00"
* authoredOn = "2023-08-31T04:25:00+00:00"

* requester.reference = "Practitioner/N10000001"
* requester.display = "Dokter Bronsig"

* performer.reference = "Practitioner/N10000005"
* performer.display = "Fatma"

* reasonCode.coding.system = "http://hl7.org/fhir/sid/icd-10"
* reasonCode.coding.code = #O14.9
* reasonCode.coding.display = "Pre-eclampsia, unspecified"
* reasonCode.text = "Pre-eclampsia, unspecified"

* locationCode.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* locationCode.coding.code = #OF
* locationCode.coding.display = "Outpatient Facility"

* locationReference.reference = "Location/c87e0ca7-badc-4c60-9080-277aaaf27a88"
* locationReference.display = "Ruang Poli KIA Puskesmas Sampang"