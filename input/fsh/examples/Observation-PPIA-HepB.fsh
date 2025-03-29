Instance: HepB-Test-PPIA
InstanceOf: PPIAHepB
Title: "Prenatal Screening - Hepatitis B (Observation)"
Description: "Observation recording the Hepatitis B test result for pregnant woman."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory Test"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #75410-1
* code.coding[0].display = "Hepatitis B virus surface Ag [Presence] in Serum, Plasma or Blood by Rapid immunoassay"

* code.coding[1].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.B9.DE60
* code.coding[1].display = "Hepatitis B test conducted"

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