Mapping: quick
Id: quick
Title: "Quality Improvement and Clinical Knowledge (QUICK)"
Source: ServiceRequest
Target: "http://siframework.org/cqf"
* identifier -> "ClinicalStatement.identifier"
* status -> "Action.currentStatus"
* code -> "Procedure.procedureCode"
* orderDetail -> "Procedure.procedureCode"
* subject -> "ClinicalStatement.subject"
* encounter -> "ClinicalStatement.encounter"
* occurrence[x] -> "Procedure.procedureSchedule"
* asNeeded[x] -> "Proposal.prnReason.reason"
* authoredOn -> "Proposal.proposedAtTime"
* requester -> "ClinicalStatement.statementAuthor"
* bodySite -> "Procedure.targetBodySite"
* note -> "ClinicalStatement.additionalText"