Mapping: workflow-for-DiagnosticReport
Id: workflow
Title: "Workflow Pattern"
Source: DiagnosticReport
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* basedOn -> "Event.basedOn"
* status -> "Event.status"
* code -> "Event.code"
* subject -> "Event.subject"
* encounter -> "Event.encounter"
* effective[x] -> "Event.occurrence[x]"
* performer -> "Event.performer.actor"
* resultsInterpreter -> "Event.performer.actor"