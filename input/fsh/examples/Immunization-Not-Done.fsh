Instance: Immunization-TdHistory-Not-Done
InstanceOf: ANCTdHistory
Title: "Immunization Tetanus Not Administered (T0)"
Description: "Immunization instance where tetanus vaccine was not administered."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #not-done
* vaccineCode.coding.system = "http://sys-ids.kemkes.go.id/kfa"
* vaccineCode.coding.code = #VG139
* vaccineCode.coding.display = "Td"
* patient.reference = "Patient/100000030006"
* patient.display = "Aisyah"
* encounter.reference = "Encounter/{{Encounter_uuid}}"
* occurrenceDateTime = "2023-08-31T01:13:00+00:00"
* recorded = "2023-08-31T01:13:00+00:00"
* reportOrigin.coding[recall].system = "http://terminology.hl7.org/CodeSystem/immunization-origin"
* reportOrigin.coding[recall].code = #recall
* reportOrigin.coding[recall].display = "Parent/Guardian/Patient Recall"
* performer.function.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0443"
* performer.function.coding.code = #EP
* performer.function.coding.display = "Entering Provider"
* performer.actor.reference = "Practitioner/N10000001"
* statusReason.coding.system = "http://snomed.info/sct"
* statusReason.coding.code = #171257003
* statusReason.coding.display = "No consent - Tetanus/low dose diphtheria vaccine"
* reasonCode.coding.system = "http://terminology.kemkes.go.id/CodeSystem/immunization-reason"
* reasonCode.coding.code = #IM-WUS
* reasonCode.coding.display = "Imunisasi Program Rutin Lanjutan Wanita Usia Subur"