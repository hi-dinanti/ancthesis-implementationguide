Mapping: w5-for-CoverageEligibilityResponse
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CoverageEligibilityResponse
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* purpose -> "FiveWs.class"
* patient -> "FiveWs.subject[x]"
* patient -> "FiveWs.subject"
* serviced[x] -> "FiveWs.done[x]"
* created -> "FiveWs.recorded"
* requestor -> "FiveWs.source"
* request -> "FiveWs.why[x]"
* insurance.item.provider -> "FiveWs.source"