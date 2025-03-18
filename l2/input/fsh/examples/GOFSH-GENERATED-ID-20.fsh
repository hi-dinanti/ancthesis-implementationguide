Instance: GOFSH-GENERATED-ID-20
InstanceOf: Observation
Usage: #example
* status = #final
* category = $observation-category#survey "Survey"
* code.coding[0] = $loinc#8665-2 "Last menstrual period start date"
* code.coding[+] = $anc-custom-codes_1#ANC.B6.DE14 "Last menstrual period (LMP) date"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* effectiveDateTime = "2023-08-31T01:07:00+00:00"
* issued = "2023-08-31T01:07:00+00:00"
* performer = Reference(Practitioner/N10000001)
* valueDateTime = "2023-08-31T01:07:00+00:00"