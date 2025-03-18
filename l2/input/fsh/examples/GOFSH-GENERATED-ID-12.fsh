Instance: GOFSH-GENERATED-ID-12
InstanceOf: Observation
Usage: #example
* status = #final
* category = $observation-category#survey "Survey"
* code.coding[0] = $loinc#11996-6 "[#] Pregnancies"
* code.coding[+] = $anc-custom-codes_1#ANC.B6.DE24 "Number of pregnancies (gravida)"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* effectiveDateTime = "2023-08-31T01:03:00+00:00"
* issued = "2023-08-31T01:03:00+00:00"
* performer = Reference(Practitioner/N10000001)
* valueInteger = 2