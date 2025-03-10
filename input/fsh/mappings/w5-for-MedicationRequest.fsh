Mapping: w5-for-MedicationRequest
Id: w5
Title: "FiveWs Pattern Mapping"
Source: MedicationRequest
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* intent -> "FiveWs.class"
* category -> "FiveWs.class"
* priority -> "FiveWs.grade"
* medication[x] -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* supportingInformation -> "FiveWs.context"
* authoredOn -> "FiveWs.recorded"
* requester -> "FiveWs.author"
* performer -> "FiveWs.actor"
* recorder -> "FiveWs.who"
* reasonCode -> "FiveWs.why[x]"
* reasonReference -> "FiveWs.why[x]"
* dispenseRequest.performer -> "FiveWs.who"