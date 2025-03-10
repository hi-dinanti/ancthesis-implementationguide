Mapping: workflow-for-ClinicalImpression
Id: workflow
Title: "Workflow Pattern"
Source: ClinicalImpression
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* status -> "Event.status"
* statusReason -> "Event.statusReason"
* code -> "Event.code"
* subject -> "Event.subject"
* encounter -> "Event.context"
* effective[x] -> "Event.occurrence[x]"
* assessor -> "Event.performer.actor"
* note -> "Event.note"