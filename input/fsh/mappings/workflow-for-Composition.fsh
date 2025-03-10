Mapping: workflow-for-Composition
Id: workflow
Title: "Workflow Pattern"
Source: Composition
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* status -> "Event.status"
* type -> "Event.code"
* category -> "Event.subject"
* encounter -> "Event.context"
* date -> "Event.occurrence[x]"
* author -> "Event.performer"