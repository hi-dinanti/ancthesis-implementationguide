Mapping: w5-for-PractitionerRole
Id: w5
Title: "FiveWs Pattern Mapping"
Source: PractitionerRole
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* active -> "FiveWs.status"
* period -> "FiveWs.done[x]"
* location -> "FiveWs.where[x]"