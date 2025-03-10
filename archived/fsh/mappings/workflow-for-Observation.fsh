Mapping: workflow-for-Observation
Id: workflow
Title: "Workflow Pattern"
Source: Observation
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* basedOn -> "Event.basedOn"
* partOf -> "Event.partOf"
* status -> "Event.status"
* code -> "Event.code"
* subject -> "Event.subject"
* encounter -> "Event.context"
* effective[x] -> "Event.occurrence[x]"
* performer -> "Event.performer.actor"