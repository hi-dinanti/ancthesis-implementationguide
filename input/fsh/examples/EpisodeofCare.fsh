Instance: ANCEpisodeOfCareExample
InstanceOf: ANCEpisodeOfCare
Title: "Antenatal Care Episode (Example)"
Description: "An antenatal care episode of care for Aisyah, following the Indonesian standard of a minimum of six visits."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #active

* statusHistory.status = #active
* statusHistory.period.start = "2023-08-31T00:00:00+00:00"

* type.coding.system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare-type"
* type.coding.code = #ANC
* type.coding.display = "Antenatal Care"

* patient.reference = "Patient/100000030006"
* patient.display = "Aisyah"

* managingOrganization.reference = "Organization/{{Org_id}}"

* period.start = "2023-08-31T00:00:00+00:00"
