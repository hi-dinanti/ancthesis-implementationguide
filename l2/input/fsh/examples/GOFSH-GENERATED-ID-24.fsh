Instance: GOFSH-GENERATED-ID-24
InstanceOf: Observation
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#8462-4 "Diastolic blood pressure"
* code.coding[+] = $anc-custom-codes_1#ANC.B8.DE19 "Diastolic blood pressure"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* effectiveDateTime = "2023-08-31T01:22:00+00:00"
* issued = "2023-08-31T01:22:00+00:00"
* performer = Reference(Practitioner/N10000001)
* valueQuantity = 70 'mm[Hg]' "mm[Hg]"