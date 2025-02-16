Mapping: workflow-for-MedicationDispense
Id: workflow
Title: "Workflow Pattern"
Source: MedicationDispense
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* partOf -> "Event.partOf"
* status -> "Event.status"
* statusReason[x] -> "Event.statusReason"
* medication[x] -> "Event.code"
* subject -> "Event.subject"
* context -> "Event.context"
* performer -> "Event.performer"
* performer.actor -> "Event.performer.actor"
* authorizingPrescription -> "Event.basedOn"
* whenHandedOver -> "Event.occurrence[x]"
* note -> "Event.note"