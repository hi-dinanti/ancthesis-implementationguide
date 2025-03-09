Mapping: workflow-for-QuestionnaireResponse
Id: workflow
Title: "Workflow Pattern"
Source: QuestionnaireResponse
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* basedOn -> "Event.basedOn"
* partOf -> "Event.partOf"
* questionnaire -> "Event.instantiates"
* status -> "Event.status"
* subject -> "Event.subject"
* encounter -> "Event.encounter"
* authored -> "Event.occurrence[x]"
* author -> "Event.performer"