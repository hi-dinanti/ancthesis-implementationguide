Mapping: workflow-for-MedicationStatement
Id: workflow
Title: "Workflow Pattern"
Source: MedicationStatement
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* basedOn -> "Event.basedOn"
* partOf -> "Event.partOf"
* status -> "Event.status"
* statusReason -> "Event.statusReason"
* medication[x] -> "Event.code"
* subject -> "Event.subject"
* context -> "Event.context"
* effective[x] -> "Event.occurrence[x]"
* reasonCode -> "Event.reasonCode"
* reasonReference -> "Event.reasonReference"
* note -> "Event.note"