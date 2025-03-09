Mapping: workflow-for-Consent
Id: workflow
Title: "Workflow Pattern"
Source: Consent
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* status -> "Event.status"
* category -> "Event.code"
* patient -> "Event.subject"
* dateTime -> "Event.occurrence[x]"
* performer -> "Event.performer"
* organization -> "Event.performer"