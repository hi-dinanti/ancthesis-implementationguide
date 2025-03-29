Instance: LMP-Example
InstanceOf: ANCLMP
Title: "Last Menstrual Period (Observation)"
Description: "Observation recording the last menstrual period (LMP) start date for antenatal care."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #survey
* category.coding.display = "Survey"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #8665-2
* code.coding[0].display = "Last menstrual period start date"

* code.coding[1].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.B6.DE14
* code.coding[1].display = "Last menstrual period (LMP) date"

* subject.reference = "Patient/100000030007"
* subject.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"

* effectiveDateTime = "2023-08-31T01:07:00+00:00"
* issued = "2023-08-31T01:07:00+00:00"

* performer[0].reference = "Practitioner/N10000001"

* valueDateTime = "2023-08-31T01:07:00+00:00"