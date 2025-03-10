Mapping: w5-for-Coverage
Id: w5
Title: "FiveWs Pattern Mapping"
Source: Coverage
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* type -> "FiveWs.class"
* policyHolder -> "FiveWs.subject[x]"
* policyHolder -> "FiveWs.subject"
* subscriber -> "FiveWs.subject[x]"
* subscriber -> "FiveWs.subject"
* subscriberId -> "FiveWs.subject[x]"
* subscriberId -> "FiveWs.subject"
* beneficiary -> "FiveWs.subject[x]"
* beneficiary -> "FiveWs.subject"
* period -> "FiveWs.done[x]"
* payor -> "FiveWs.author"