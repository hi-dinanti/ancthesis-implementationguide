Mapping: workflow-for-Claim
Id: workflow
Title: "Workflow Pattern"
Source: Claim
Target: "http://hl7.org/fhir/workflow"
* -> "Request"
* identifier -> "Request.identifier"
* status -> "Request.status"
* patient -> "Request.subject"
* created -> "Request.authoredOn"
* insurer -> "Request.performer"
* provider -> "Request.requester"
* priority -> "Request.priority"
* related.claim -> "Request.replaces"
* supportingInfo -> "Request.supportingInfo"
* diagnosis -> "Request.reasonReference"
* insurance.identifier -> "Request.identifier"
* item.encounter -> "Request.context"