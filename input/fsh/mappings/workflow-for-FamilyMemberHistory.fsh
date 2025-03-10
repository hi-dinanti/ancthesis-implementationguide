Mapping: workflow-for-FamilyMemberHistory
Id: workflow
Title: "Workflow Pattern"
Source: FamilyMemberHistory
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* instantiatesCanonical -> "Event.instantiatesCanonical"
* instantiatesUri -> "Event.instantiatesUri"
* status -> "Event.status"
* patient -> "Event.subject"
* reasonCode -> "Event.reasonCode"
* reasonReference -> "Event.reasonReference"
* note -> "Event.note"