Mapping: w5-for-ClinicalImpression
Id: w5
Title: "FiveWs Pattern Mapping"
Source: ClinicalImpression
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* code -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* effective[x] -> "FiveWs.done[x]"
* date -> "FiveWs.recorded"
* assessor -> "FiveWs.author"
* problem -> "FiveWs.why[x]"