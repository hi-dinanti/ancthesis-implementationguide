Instance: GOFSH-GENERATED-ID-9
InstanceOf: Observation
Usage: #example
* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "O111111"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#75410-1 "Hepatitis B virus surface Ag [Presence] in Serum, Plasma or Blood by Rapid immunoassay"
* code.coding[+] = $anc-custom-codes_1#ANC.B9.DE60 "Hepatitis B test conducted"
* specimen = Reference(Specimen/{{Specimen_Darah_ANC_id}})
* basedOn = Reference(ServiceRequest/{{ServiceRequest_Lab_ANC_HepB}})
* subject = Reference(Patient/{{Patient_Ibu_ID}})
* encounter = Reference(Encounter/{{Encounter_ANC_id}})
* effectiveDateTime = "2015-06-20T05:15:00+00:00"
* issued = "2015-06-20T05:20:00+00:00"
* performer[0] = Reference(Practitioner/N10000005)
* performer[+] = Reference(Organization/{{Org_id}})
* valueCodeableConcept = $sct#11214006 "Reactive"