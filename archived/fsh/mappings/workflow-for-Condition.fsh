Mapping: workflow-for-Condition
Id: workflow
Title: "Workflow Pattern"
Source: Condition
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* clinicalStatus -> "Event.status"
* verificationStatus -> "Event.status"
* code -> "Event.code"
* subject -> "Event.subject"
* encounter -> "Event.context"
* onset[x] -> "Event.occurrence[x]"
* evidence.code -> "Event.reasonCode"
* note -> "Event.note"