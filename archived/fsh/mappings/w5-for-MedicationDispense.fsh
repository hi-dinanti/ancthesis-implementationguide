Mapping: w5-for-MedicationDispense
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MedicationDispense
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* medication[x] -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* supportingInformation -> "FiveWs.context"