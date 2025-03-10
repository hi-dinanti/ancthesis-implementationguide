Mapping: w5-for-Invoice
Id: w5
Title: "FiveWs Pattern Mapping"
Source: Invoice
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* type -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* date -> "FiveWs.done[x]"
* participant.actor -> "FiveWs.actor"