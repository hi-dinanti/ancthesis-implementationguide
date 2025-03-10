Mapping: w5-for-Specimen
Id: w5
Title: "FiveWs Pattern Mapping"
Source: Specimen
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* accessionIdentifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* type -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* receivedTime -> "FiveWs.done[x]"
* request -> "FiveWs.why[x]"
* collection.collector -> "FiveWs.actor"
* collection.collected[x] -> "FiveWs.init"
* collection.duration -> "FiveWs.init"