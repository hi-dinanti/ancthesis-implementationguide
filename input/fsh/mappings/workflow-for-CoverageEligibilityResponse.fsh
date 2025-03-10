Mapping: workflow-for-CoverageEligibilityResponse
Id: workflow
Title: "Workflow Pattern"
Source: CoverageEligibilityResponse
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* status -> "Event.status"
* patient -> "Event.subject"
* request -> "Event.basedOn"
* disposition -> "Event.note"