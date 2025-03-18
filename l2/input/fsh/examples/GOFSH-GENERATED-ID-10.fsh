Instance: GOFSH-GENERATED-ID-10
InstanceOf: Observation
Usage: #example
* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "O111111"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#68961-2 "HIV 1 Ab [Presence] in Serum, Plasma or Blood by Rapid immunoassay"
* code.coding[+] = $anc-custom-codes_1#ANC.B9.DE32 "HIV test"
* specimen = Reference(Specimen/{{Specimen_Darah_ANC_id}})
* basedOn = Reference(ServiceRequest/{{ServiceRequest_Lab_ANC_HIV1}})
* subject = Reference(Patient/{{Patient_Ibu_ID}}) "{{Patient_Ibu_name}}"
* encounter = Reference(Encounter/{{Encounter_ANC_id}})
* effectiveDateTime = "2015-06-20T05:15:00+00:00"
* issued = "2015-06-20T05:20:00+00:00"
* performer[0] = Reference(Practitioner/N10000005)
* performer[+] = Reference(Organization/{{Org_id}})
* valueCodeableConcept = $sct#131194007 "Non-Reactive"