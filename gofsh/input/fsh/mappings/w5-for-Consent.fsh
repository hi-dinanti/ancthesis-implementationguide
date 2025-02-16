Mapping: w5-for-Consent
Id: w5
Title: "FiveWs Pattern Mapping"
Source: Consent
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* category -> "FiveWs.class"
* patient -> "FiveWs.subject[x]"
* patient -> "FiveWs.subject"
* dateTime -> "FiveWs.recorded"
* performer -> "FiveWs.actor"
* organization -> "FiveWs.witness"