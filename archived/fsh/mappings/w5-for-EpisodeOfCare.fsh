Mapping: w5-for-EpisodeOfCare
Id: w5
Title: "FiveWs Pattern Mapping"
Source: EpisodeOfCare
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* type -> "FiveWs.class"
* diagnosis.condition -> "FiveWs.what[x]"
* patient -> "FiveWs.subject[x]"
* patient -> "FiveWs.subject"
* period -> "FiveWs.init"