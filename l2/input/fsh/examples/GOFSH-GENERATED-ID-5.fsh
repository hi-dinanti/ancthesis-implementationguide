Instance: GOFSH-GENERATED-ID-5
InstanceOf: Observation
Usage: #example
* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "O111111"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.coding[+] = $anc-custom-codes_1#ANC.B9.DE175 "Blood haemoglobin test conducted"
* specimen = Reference(Specimen/{{Specimen_Darah_ANC_id}})
* basedOn = Reference(ServiceRequest/{{ServiceRequest_Lab_ANC_Hb}})
* subject = Reference(Patient/{{Patient_Ibu_ID}}) "{{Patient_Ibu_name}}"
* encounter = Reference(Encounter/{{Encounter_ANC_id}})
* effectiveDateTime = "2015-06-20T05:15:00+00:00"
* issued = "2015-06-20T05:20:00+00:00"
* performer[0] = Reference(Practitioner/N10000005)
* performer[+] = Reference(Organization/{{Org_id}})
* valueQuantity = 11.2 'g/dL'