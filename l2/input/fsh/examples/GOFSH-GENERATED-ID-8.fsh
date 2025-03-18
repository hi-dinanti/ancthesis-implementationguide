Instance: GOFSH-GENERATED-ID-8
InstanceOf: Observation
Usage: #example
* basedOn = Reference(ServiceRequest/{{ServiceRequest_Lab_ANC_VDRL}})
* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "O111111"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#14904-7 "Reagin Ab [Presence] in Specimen by VDRL"
* code.coding[+] = $anc-custom-codes_1#ANC.B9.DE96 "Syphilis test conducted"
* specimen = Reference(Specimen/{{Specimen_Darah_ANC_id}})
* subject = Reference(Patient/{{Patient_Ibu_ID}}) "{{Patient_Ibu_name}}"
* encounter = Reference(Encounter/{{Encounter_ANC_id}})
* effectiveDateTime = "2015-06-20T05:15:00+00:00"
* issued = "2015-06-20T05:20:00+00:00"
* performer[0] = Reference(Practitioner/N10000005)
* performer[+] = Reference(Organization/{{Org_id}})
* valueCodeableConcept = $sct#131194007 "Non-Reactive"