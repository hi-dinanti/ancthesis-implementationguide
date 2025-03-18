Instance: GOFSH-GENERATED-ID-21
InstanceOf: Observation
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#29463-7 "Body weight"
* code.coding[+] = $anc-custom-codes_1#ANC.B8.DE3 "Current  weight"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* effectiveDateTime = "2023-08-31T01:17:00+00:00"
* issued = "2023-08-31T01:17:00+00:00"
* performer = Reference(Practitioner/N10000001)
* valueQuantity = 63 'kg' "kg"