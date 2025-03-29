Instance: BloodType-Example
InstanceOf: ANCBloodTypes
Title: "Blood Type Example (Observation)"
Description: "Observation representing blood type (ABO antibody) recorded during an antenatal care visit. This data supports maternal health assessment as part of the Indonesian minimum 10T exam."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #883-9
* code.coding[0].display = "ABO group [Type] in Blood"

* code.coding[1].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.B9.DE24
* code.coding[1].display = "Blood type"

* subject.reference = "Patient/100000030006"
* subject.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"

* effectiveDateTime = "2023-08-31T01:35:00+00:00"
* issued = "2023-08-31T01:35:00+00:00"

* performer.reference = "Practitioner/N10000001"

* valueCodeableConcept.coding.system = "http://loinc.org"
* valueCodeableConcept.coding.code = #LA19710-5
* valueCodeableConcept.coding.display = "Group A"