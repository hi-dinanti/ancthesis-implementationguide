Instance: Inline-Instance-for-GOFSH-GENERATED-ID-17-4
InstanceOf: EpisodeOfCare
Usage: #inline
* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "EOC998800"
* status = #finished
* statusHistory[0].status = #active
* statusHistory[=].period.start = "2023-06-14T00:00:00+00:00"
* statusHistory[=].period.end = "2023-06-14T01:00:00+00:00"
* statusHistory[+].status = #finished
* statusHistory[=].period.start = "2024-02-06T00:00:00+00:00"
* statusHistory[=].period.end = "2024-02-06T00:00:00+00:00"
* type = $episodeofcare-type#ANC "Antenatal Care"
* patient = Reference(Patient/100000030006) "Jane Smith"
* managingOrganization = Reference(Organization/{{Org_id}})
* period.start = "2023-05-02T00:00:00+00:00"
* period.end = "2024-02-06T00:00:00+00:00"