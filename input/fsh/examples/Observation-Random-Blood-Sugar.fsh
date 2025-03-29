Instance: RandomBloodSugar-Example
InstanceOf: ANCRandomBloodSugar
Title: "Random Blood Sugar Observation"
Description: "Observation resource for random blood sugar measurement."
Usage: #example
* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "{{Org_id}}"
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #2339-0
* code.coding[0].display = "Glucose [Mass/volume] in Blood"
* code.coding[1].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.B9.DE200
* code.coding[1].display = "Random blood sugar test conducted"
* specimen.reference = "Specimen/{{Specimen_uuid}}"
* basedOn.reference = "ServiceRequest/{{ServiceRequest_uuid}}"
* subject.reference = "Patient/{{Patient_uuid}}"
* encounter.reference = "Encounter/{{Encounter_uuid}}"
* effectiveDateTime = "2015-06-20T05:15:00+00:00"
* issued = "2015-06-20T05:20:00+00:00"
* performer[0].reference = "Practitioner/N10000005"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = #mg/dL
* valueQuantity.value = 120