Mapping: w5-for-CoverageEligibilityRequest
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CoverageEligibilityRequest
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* priority -> "FiveWs.class"
* purpose -> "FiveWs.class"
* patient -> "FiveWs.subject[x]"
* patient -> "FiveWs.subject"
* serviced[x] -> "FiveWs.done[x]"
* created -> "FiveWs.recorded"
* enterer -> "FiveWs.author"
* provider -> "FiveWs.source"
* insurer -> "FiveWs.who"
* facility -> "FiveWs.where[x]"
* item.provider -> "FiveWs.source"