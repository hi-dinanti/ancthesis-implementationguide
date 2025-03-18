Instance: GOFSH-GENERATED-ID-22
InstanceOf: Observation
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#8302-2 "Body height"
* code.coding[+] = $anc-custom-codes_1#ANC.B8.DE1 "Height"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* effectiveDateTime = "2023-08-31T01:10:00+00:00"
* issued = "2023-08-31T01:10:00+00:00"
* performer = Reference(Practitioner/N10000001)
* valueQuantity = 158 'cm' "cm"