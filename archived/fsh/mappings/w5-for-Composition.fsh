Mapping: w5-for-Composition
Id: w5
Title: "FiveWs Pattern Mapping"
Source: Composition
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* type -> "FiveWs.class"
* category -> "FiveWs.class"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* date -> "FiveWs.done[x]"
* author -> "FiveWs.author"
* attester.party -> "FiveWs.witness"
* section.author -> "FiveWs.author"
* section.mode -> "FiveWs.class"