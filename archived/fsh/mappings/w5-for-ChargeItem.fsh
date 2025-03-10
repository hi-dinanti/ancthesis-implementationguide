Mapping: w5-for-ChargeItem
Id: w5
Title: "FiveWs Pattern Mapping"
Source: ChargeItem
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* code -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* context -> "FiveWs.context"
* occurrence[x] -> "FiveWs.done[x]"
* performer.actor -> "FiveWs.actor"
* enterer -> "FiveWs.actor"
* reason -> "FiveWs.why[x]"
* service -> "FiveWs.why[x]"