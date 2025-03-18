Instance: GOFSH-GENERATED-ID-3
InstanceOf: Observation
Usage: #example
* identifier.system = "http://sys-ids.kemkes.go.id/observation/{{Org_id}}"
* identifier.value = "O111111"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#883-9 "ABO group [Type] in Blood"
* code.coding[+] = $anc-custom-codes_1#ANC.B9.DE24 "Blood type"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* effectiveDateTime = "2023-08-31T01:35:00+00:00"
* issued = "2023-08-31T01:35:00+00:00"
* performer = Reference(Practitioner/N10000001)
* valueCodeableConcept = $loinc#LA19710-5 "Group A"