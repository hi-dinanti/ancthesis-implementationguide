Mapping: workflow-for-Procedure
Id: workflow
Title: "Workflow Pattern"
Source: Procedure
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* instantiatesCanonical -> "Event.instantiatesCanonical"
* instantiatesUri -> "Event.instantiatesUri"
* basedOn -> "Event.basedOn"
* partOf -> "Event.partOf"
* status -> "Event.status"
* statusReason -> "Event.statusReason"
* code -> "Event.code"
* subject -> "Event.subject"
* encounter -> "Event.context"
* performed[x] -> "Event.occurrence[x]"
* performer -> "Event.performer"
* performer.function -> "Event.performer.function"
* performer.actor -> "Event.performer.actor"
* reasonCode -> "Event.reasonCode"
* reasonReference -> "Event.reasonReference"
* note -> "Event.note"