Instance: CurrentWeight-Example
InstanceOf: ANCCurrentWeight
Title: "CurrentWeight Example (Observation)"
Description: "Observation recording the body weight of the patient."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #exam
* category.coding.display = "Exam"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #29463-7
* code.coding[0].display = "Body weight"

* code.coding[1].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.B8.DE3
* code.coding[1].display = "Current weight"

* subject.reference = "Patient/100000030007"
* subject.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"

* effectiveDateTime = "2023-08-31T01:10:00+00:00"
* issued = "2023-08-31T01:10:00+00:00"

* performer.reference = "Practitioner/N10000001"

* valueQuantity.value = 60
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg