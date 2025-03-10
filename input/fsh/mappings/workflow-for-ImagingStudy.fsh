Mapping: workflow-for-ImagingStudy
Id: workflow
Title: "Workflow Pattern"
Source: ImagingStudy
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* status -> "Event.status"
* subject -> "Event.subject"
* encounter -> "Event.encounter"
* started -> "Event.occurrence[x]"
* basedOn -> "Event.basedOn"
* procedureReference -> "Event.partOf"
* procedureCode -> "Event.code"
* location -> "Event.location"
* reasonCode -> "Event.reasonCode"
* reasonReference -> "Event.reasonReference"
* note -> "Event.note"
* series.performer -> "Event.performer"