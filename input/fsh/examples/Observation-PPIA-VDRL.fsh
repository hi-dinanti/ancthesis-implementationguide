Instance: VDRL-Test-PPIA
InstanceOf: PPIAVDRL
Title: "Prenatal Screening - Syphilis (VDRL) (Observation)"
Description: "Observation recording the Syphilis (VDRL) test result for pregnant woman."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory Test"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #50690-7
* code.coding[0].display = "Syphilis test (VDRL) [Presence] in Serum"

* code.coding[1].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.B9.DE96
* code.coding[1].display = "Syphilis test conducted"

* specimen.reference = "Specimen/{{Specimen_uuid}}"

* basedOn.reference = "ServiceRequest/{{ServiceRequest_uuid}}"

* subject.reference = "Patient/100000030007"
* subject.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"

* effectiveDateTime = "2015-06-20T05:15:00+00:00"
* issued = "2015-06-20T05:20:00+00:00"

* performer[0].reference = "Practitioner/N10000005"

* valueCodeableConcept.coding.system = "http://snomed.info/sct"
* valueCodeableConcept.coding.code = #131194007
* valueCodeableConcept.coding.display = "Not reactive"