Instance: GOFSH-GENERATED-ID-0
InstanceOf: EpisodeOfCare
Usage: #example
* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "EOC998803"
* status = #active
* statusHistory.status = #active
* statusHistory.period.start = "2023-08-31T00:00:00+00:00"
* type = $episodeofcare-type#ANC "Antenatal Care"
* patient = Reference(Patient/100000030006) "Jane Smith"
* managingOrganization = Reference(Organization/{{Org_id}})
* period.start = "2023-08-31T00:00:00+00:00"