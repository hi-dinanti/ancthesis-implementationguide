Mapping: w5-for-HealthcareService
Id: w5
Title: "FiveWs Pattern Mapping"
Source: HealthcareService
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* active -> "FiveWs.status"
* category -> "FiveWs.class"
* location -> "FiveWs.where[x]"