Mapping: w5-for-CarePlan
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CarePlan
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* category -> "FiveWs.class"
* description -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* period -> "FiveWs.planned"
* created -> "FiveWs.recorded"
* author -> "FiveWs.author"
* careTeam -> "FiveWs.actor"
* addresses -> "FiveWs.why[x]"