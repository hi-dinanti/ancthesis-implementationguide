Mapping: w5-for-AllergyIntolerance
Id: w5
Title: "FiveWs Pattern Mapping"
Source: AllergyIntolerance
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* clinicalStatus -> "FiveWs.status"
* verificationStatus -> "FiveWs.status"
* type -> "FiveWs.class"
* category -> "FiveWs.class"
* criticality -> "FiveWs.grade"
* code -> "FiveWs.what[x]"
* patient -> "FiveWs.subject[x]"
* patient -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* onset[x] -> "FiveWs.init"
* recordedDate -> "FiveWs.recorded"
* recorder -> "FiveWs.author"
* asserter -> "FiveWs.source"