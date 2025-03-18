Instance: GOFSH-GENERATED-ID-4
InstanceOf: Observation
Usage: #example
* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "O111112"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#10331-7 "Rh [Type] in Blood"
* code.coding[+] = $anc-custom-codes_1#ANC.B9.DE29 "Rh factor"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* effectiveDateTime = "2023-08-31T01:40:00+00:00"
* issued = "2023-08-31T01:40:00+00:00"
* performer = Reference(Practitioner/N10000001)
* valueCodeableConcept = $loinc#LA6576-8 "Positive"