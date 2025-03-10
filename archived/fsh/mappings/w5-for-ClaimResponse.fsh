Mapping: w5-for-ClaimResponse
Id: w5
Title: "FiveWs Pattern Mapping"
Source: ClaimResponse
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* type -> "FiveWs.class"
* subType -> "FiveWs.class"
* use -> "FiveWs.class"
* patient -> "FiveWs.subject[x]"
* patient -> "FiveWs.subject"
* created -> "FiveWs.recorded"
* requestor -> "FiveWs.source"
* request -> "FiveWs.why[x]"
* addItem.provider -> "FiveWs.source"
* addItem.serviced[x] -> "FiveWs.done[x]"
* addItem.location[x] -> "FiveWs.where[x]"