Mapping: w5-for-FamilyMemberHistory
Id: w5
Title: "FiveWs Pattern Mapping"
Source: FamilyMemberHistory
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* patient -> "FiveWs.subject[x]"
* patient -> "FiveWs.subject"
* date -> "FiveWs.recorded"
* reasonCode -> "FiveWs.why[x]"
* reasonReference -> "FiveWs.why[x]"