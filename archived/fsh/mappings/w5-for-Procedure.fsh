Mapping: w5-for-Procedure
Id: w5
Title: "FiveWs Pattern Mapping"
Source: Procedure
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* category -> "FiveWs.class"
* code -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* performed[x] -> "FiveWs.done[x]"
* recorder -> "FiveWs.author"
* asserter -> "FiveWs.source"
* performer.actor -> "FiveWs.actor"
* location -> "FiveWs.where[x]"
* reasonCode -> "FiveWs.why[x]"
* reasonReference -> "FiveWs.why[x]"