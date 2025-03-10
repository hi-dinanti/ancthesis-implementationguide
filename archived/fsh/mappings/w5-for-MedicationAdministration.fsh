Mapping: w5-for-MedicationAdministration
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MedicationAdministration
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* medication[x] -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* context -> "FiveWs.context"
* supportingInformation -> "FiveWs.context"
* effective[x] -> "FiveWs.done[x]"
* performer -> "FiveWs.actor"
* reasonReference -> "FiveWs.why[x]"