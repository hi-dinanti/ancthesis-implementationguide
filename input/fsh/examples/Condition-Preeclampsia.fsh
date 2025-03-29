Instance: ANCConditionExample
InstanceOf: ANCCondition
Title: "ANC Condition Example - Pre-eclampsia"
Description: "Example of an antenatal care condition related to pre-eclampsia."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"

* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #encounter-diagnosis
* category.coding.display = "Encounter Diagnosis"

* code.coding.system = "http://hl7.org/fhir/sid/icd-10"
* code.coding.code = #O14.9
* code.coding.display = "Pre-eclampsia, unspecified"

* subject.reference = "Patient/100000030006"
* subject.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"
* encounter.display = "Kunjungan Aisyah di hari Kamis, 31 Agustus 2023"

* onsetDateTime = "2023-08-31T04:10:00+00:00"
* recordedDate = "2023-08-31T04:10:00+00:00"