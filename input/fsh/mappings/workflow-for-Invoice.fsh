Mapping: workflow-for-Invoice
Id: workflow
Title: "Workflow Pattern"
Source: Invoice
Target: "http://hl7.org/fhir/workflow"
* type -> "Event.code"
* subject -> "Event.subject"
* recipient -> "Event.context"
* lineItem.priceComponent.type -> "Event.code"
* lineItem.priceComponent.code -> "Event.code"
* note -> "Event.note"