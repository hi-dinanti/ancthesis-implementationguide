Instance: Inline-Instance-for-GOFSH-GENERATED-ID-17-6
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#survey "Survey"
* code.coding[0] = $loinc#11996-6 "[#] Pregnancies"
* code.coding[+] = $anc-custom-codes_1#ANC.B6.DE24 "Number of pregnancies (gravida)"
* subject = Reference(Patient/100000030006) "Jane Smith"
* encounter = Reference(urn:uuid:2ba985a6-dccc-499b-a4ff-22d9564c9dbb)
* effectiveDateTime = "2023-06-14T00:00:00+00:00"
* issued = "2023-06-14T14:30:10+00:00"
* performer = Reference(Practitioner/N10000001)
* valueInteger = 2