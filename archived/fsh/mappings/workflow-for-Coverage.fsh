Mapping: workflow-for-Coverage
Id: workflow
Title: "Workflow Pattern"
Source: Coverage
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* status -> "Event.status"
* beneficiary -> "Event.subject"
* period -> "Event.occurrence[x]"