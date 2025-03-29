Instance: MUAC-Example
InstanceOf: ANCMUAC
Title: "Mid Upper Arm Circumference - LiLA (Observation)"
Description: "Observation recording the mid upper arm circumference (MUAC/LiLA) measurement for antenatal care."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #exam
* category.coding.display = "Exam"

* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #284473002
* code.coding[0].display = "Mid upper arm circumference"

* code.coding[1].system = "http://terminology.kemkes.go.id/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.SS.DE3
* code.coding[1].display = "Lingkar Lengan Atas (LILA)"

* subject.reference = "Patient/100000030007"
* subject.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"

* effectiveDateTime = "2023-08-31T01:07:00+00:00"
* issued = "2023-08-31T01:07:00+00:00"

* performer[0].reference = "Practitioner/N10000001"

* valueQuantity.value = 23.5
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

* interpretation.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation.coding.code = #N
* interpretation.coding.display = "Normal"