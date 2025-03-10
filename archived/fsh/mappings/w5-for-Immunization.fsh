Mapping: w5-for-Immunization
Id: w5
Title: "FiveWs Pattern Mapping"
Source: Immunization
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* vaccineCode -> "FiveWs.what[x]"
* patient -> "FiveWs.subject[x]"
* patient -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* occurrence[x] -> "FiveWs.done[x]"
* recorded -> "FiveWs.recorded"
* primarySource -> "FiveWs.source"
* reportOrigin -> "FiveWs.source"
* location -> "FiveWs.where[x]"
* performer.actor -> "FiveWs.actor"