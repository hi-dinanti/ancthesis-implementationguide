Instance: GOFSH-GENERATED-ID-2
InstanceOf: Observation
Usage: #example
* status = #final
* category = $observation-category#exam "Exam"
* code.coding[0] = $sct#284473002 "Mid upper arm circumference"
* code.coding[+] = $anc-custom-codes#ANC.SS.DE3 "Lingkar Lengan Atas (LILA)"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(Encounter/{{Encounter_uuid}})
* effectiveDateTime = "2023-08-31T01:18:00+00:00"
* issued = "2023-08-31T01:18:00+00:00"
* performer = Reference(Practitioner/N10000001)
* valueQuantity = 30 'cm' "cm"
* interpretation = $v3-ObservationInterpretation#N "Normal"