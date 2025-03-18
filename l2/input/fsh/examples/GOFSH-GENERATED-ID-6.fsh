Instance: GOFSH-GENERATED-ID-6
InstanceOf: Observation
Usage: #example
* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "O111111"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#5804-0 "Protein [mass/volume] in urine by test strip"
* code.coding[+] = $anc-custom-codes_1#ANC.B9.DE114 "Urine test conducted"
* specimen = Reference(Specimen/{{Specimen_Urine_ANC_id}})
* basedOn = Reference(ServiceRequest/{{ServiceRequest_Lab_ANC_Proteinurin}})
* subject = Reference(Patient/{{Patient_Ibu_ID}})
* encounter = Reference(Encounter/{{Encounter_ANC_id}})
* effectiveDateTime = "2015-06-20T05:15:00+00:00"
* issued = "2015-06-20T05:20:00+00:00"
* performer[0] = Reference(Practitioner/N10000005)
* performer[+] = Reference(Organization/{{Org_id}})
* valueQuantity = 0 'mg/dL'