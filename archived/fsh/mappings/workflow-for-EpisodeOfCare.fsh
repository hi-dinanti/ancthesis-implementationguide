Mapping: workflow-for-EpisodeOfCare
Id: workflow
Title: "Workflow Pattern"
Source: EpisodeOfCare
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* status -> "Event.status"
* type -> "Event.code"
* diagnosis.condition -> "Event.reasonReference"
* patient -> "Event.subject"
* managingOrganization -> "Event.performer.actor"
* period -> "Event.occurrence[x]"
* referralRequest -> "Event.basedOn"
* careManager -> "Event.performer.actor"
* team -> "Event.performer.actor"