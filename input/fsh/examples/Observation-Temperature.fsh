Instance: BodyTemperature-Example
InstanceOf: ANCTemperature
Title: "Body Temperature (Observation)"
Description: "Observation recording the body temperature for antenatal care."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #8310-5
* code.coding[0].display = "Body temperature"

* code.coding[1].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[1].code = #ANC.B8.DE34
* code.coding[1].display = "Body temperature"

* subject.reference = "Patient/100000030007"
* subject.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"

* effectiveDateTime = "2023-08-31T01:23:00+00:00"
* issued = "2023-08-31T01:23:00+00:00"

* performer[0].reference = "Practitioner/N10000001"

* valueQuantity.value = 36.5
* valueQuantity.unit = "°C"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel