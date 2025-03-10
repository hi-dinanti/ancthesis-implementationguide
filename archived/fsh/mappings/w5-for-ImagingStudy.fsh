Mapping: w5-for-ImagingStudy
Id: w5
Title: "FiveWs Pattern Mapping"
Source: ImagingStudy
Target: "http://hl7.org/fhir/fivews"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* modality -> "FiveWs.class"
* subject -> "FiveWs.subject[x]"
* subject -> "FiveWs.subject"
* encounter -> "FiveWs.context"
* started -> "FiveWs.init"
* basedOn -> "FiveWs.cause"
* referrer -> "FiveWs.cause"
* interpreter -> "FiveWs.witness"
* location -> "FiveWs.where[x]"
* reasonCode -> "FiveWs.why[x]"
* reasonReference -> "FiveWs.why[x]"
* series.performer.actor -> "FiveWs.actor"