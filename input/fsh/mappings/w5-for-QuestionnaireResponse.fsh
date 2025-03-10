Mapping: w5-for-QuestionnaireResponse
Id: w5
Title: "FiveWs Pattern Mapping"
Source: QuestionnaireResponse
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* authored -> "FiveWs.recorded"
* author -> "FiveWs.author"
* source -> "FiveWs.source"