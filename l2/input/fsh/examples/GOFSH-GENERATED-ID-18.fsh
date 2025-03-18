Instance: GOFSH-GENERATED-ID-18
InstanceOf: Observation
Usage: #example
* status = #final
* category = $observation-category#survey "Survey"
* code.coding[0] = $loinc#11977-6 "[#] Parity"
* code.coding[+] = $anc-custom-codes_1#ANC.B6.DE32 "Parity"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* effectiveDateTime = "2023-08-31T01:05:00+00:00"
* issued = "2023-08-31T01:05:00+00:00"
* performer = Reference(Practitioner/N10000001)
* valueInteger = 1