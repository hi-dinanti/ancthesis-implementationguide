Mapping: w5-for-DiagnosticReport
Id: w5
Title: "FiveWs Pattern Mapping"
Source: DiagnosticReport
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* category -> "FiveWs.class"
* code -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* effective[x] -> "FiveWs.done[x]"
* issued -> "FiveWs.recorded"
* performer -> "FiveWs.actor"
* resultsInterpreter -> "FiveWs.actor"