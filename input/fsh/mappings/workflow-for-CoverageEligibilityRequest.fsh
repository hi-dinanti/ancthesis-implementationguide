Mapping: workflow-for-CoverageEligibilityRequest
Id: workflow
Title: "Workflow Pattern"
Source: CoverageEligibilityRequest
Target: "http://hl7.org/fhir/workflow"
* -> "Request"
* identifier -> "Request.identifier"
* status -> "Request.status"
* priority -> "Request.priority"
* patient -> "Request.subject"
* created -> "Request.authoredOn"
* provider -> "Request.requester"
* insurer -> "Request.performer"
* item.provider -> "Request.requester"