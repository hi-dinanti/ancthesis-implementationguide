Instance: Proteinuria-Example
InstanceOf: ANCProteinUrine
Title: "Proteinuria (Urine Test) Observation"
Description: "Observation recording the presence of protein in urine for antenatal care."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #final

* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #5804-0
* code.coding[0].display = "Protein [mass/volume] in urine by test strip"

* code.coding[1].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.B9.DE114
* code.coding[1].display = "Urine test conducted"

* specimen.reference = "Specimen/{{Specimen_uuid}}"

* basedOn.reference = "ServiceRequest/{{ServiceRequest_uuid}}"

* subject.reference = "Patient/{{Patient_uuid}}"

* encounter.reference = "Encounter/{{Encounter_uuid}}"

* effectiveDateTime = "2015-06-20T05:15:00+00:00"
* issued = "2015-06-20T05:20:00+00:00"

* performer[0].reference = "Practitioner/N10000005"

* valueCodeableConcept.coding.system = "http://loinc.org"
* valueCodeableConcept.coding.code = #LA11842-4
* valueCodeableConcept.coding.display = "2+"