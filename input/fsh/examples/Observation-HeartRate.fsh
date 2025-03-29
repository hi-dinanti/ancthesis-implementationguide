Instance: HeartRate-Example
InstanceOf: ANCHeartRate
Title: "Heart Rate (Observation)"
Description: "Observation recording the heart rate (pulse rate) for antenatal care."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #8867-4
* code.coding[0].display = "Heart rate"

* code.coding[1].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.B8.DE36
* code.coding[1].display = "Pulse rate"

* subject.reference = "Patient/100000030007"
* subject.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"

* effectiveDateTime = "2023-08-31T01:23:00+00:00"
* issued = "2023-08-31T01:23:00+00:00"

* performer[0].reference = "Practitioner/N10000001"

* valueQuantity.value = 80
* valueQuantity.unit = "beats/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min