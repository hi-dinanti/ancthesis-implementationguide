Instance: GOFSH-GENERATED-ID-15
InstanceOf: Procedure
Usage: #example
* status = #completed
* category = $sct#103693007 "Diagnostic procedure"
* category.text = "Diagnostic procedure"
* code = $icd-9-cm#88.78 "Diagnostic ultrasound of gravid uterus"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* performedPeriod.start = "2023-08-31T02:35:00+00:00"
* performedPeriod.end = "2023-08-31T02:55:00+00:00"
* performer.actor = Reference(Practitioner/N10000001) "Dokter Bronsig"