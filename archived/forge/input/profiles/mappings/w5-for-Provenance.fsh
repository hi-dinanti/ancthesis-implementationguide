Mapping: w5-for-Provenance
Id: w5
Title: "FiveWs Pattern Mapping"
Source: Provenance
Target: "http://hl7.org/fhir/fivews"
* target -> "FiveWs.what[x]"
* occurred[x] -> "FiveWs.done[x]"
* recorded -> "FiveWs.recorded"
* location -> "FiveWs.where[x]"
* reason -> "FiveWs.why[x]"
* activity -> "FiveWs.why[x]"
* agent -> "FiveWs.who"
* agent.who -> "FiveWs.actor"