Mapping: w5-for-CareTeam
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CareTeam
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* category -> "FiveWs.class"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* period -> "FiveWs.init"
* participant.member -> "FiveWs.actor"
* reasonCode -> "FiveWs.why[x]"
* reasonReference -> "FiveWs.why[x]"