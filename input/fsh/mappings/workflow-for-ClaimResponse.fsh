Mapping: workflow-for-ClaimResponse
Id: workflow
Title: "Workflow Pattern"
Source: ClaimResponse
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* status -> "Event.status"
* created -> "Event.occurrence[x]"
* insurer -> "Event.performer"
* request -> "Event.basedOn"
* disposition -> "Event.note"