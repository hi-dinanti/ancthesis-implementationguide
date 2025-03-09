Mapping: w5-for-MedicationStatement
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MedicationStatement
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* category -> "FiveWs.class"
* medication[x] -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* effective[x] -> "FiveWs.done[x]"
* dateAsserted -> "FiveWs.recorded"
* informationSource -> "FiveWs.source"
* reasonCode -> "FiveWs.why[x]"
* reasonReference -> "FiveWs.why[x]"