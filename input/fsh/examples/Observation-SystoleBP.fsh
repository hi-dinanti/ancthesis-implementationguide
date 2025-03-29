Instance: SystoleBP-Example
InstanceOf: ANCSystoleBP
Title: "Systolic Blood Pressure Example (Observation)"
Description: "Observation recording systolic blood pressure measurement."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #8480-6
* code.coding[0].display = "Systolic blood pressure"

* code.coding[1].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.B8.DE17
* code.coding[1].display = "Systolic blood pressure"

* subject.reference = "Patient/100000030007"
* subject.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"

* effectiveDateTime = "2023-08-31T01:22:00+00:00"
* issued = "2023-08-31T01:22:00+00:00"

* performer.reference = "Practitioner/N10000001"

* valueQuantity.value = 100
* valueQuantity.unit = "mm[Hg]"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]