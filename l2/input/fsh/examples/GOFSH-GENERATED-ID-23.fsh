Instance: GOFSH-GENERATED-ID-23
InstanceOf: Observation
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#8480-6 "Systolic blood pressure"
* code.coding[+] = $anc-custom-codes_1#ANC.B8.DE17 "Systolic blood pressure"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* effectiveDateTime = "2023-08-31T01:22:00+00:00"
* issued = "2023-08-31T01:22:10+00:00"
* performer = Reference(Practitioner/N10000001)
* valueQuantity = 128 'mm[Hg]' "mm[Hg]"