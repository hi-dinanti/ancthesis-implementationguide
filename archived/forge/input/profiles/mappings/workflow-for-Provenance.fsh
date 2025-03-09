Mapping: workflow-for-Provenance
Id: workflow
Title: "Workflow Pattern"
Source: Provenance
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* occurred[x] -> "Event.occurred[x]"
* location -> "Event.location"
* reason -> "Event.reasonCode"
* activity -> "Event.code"
* agent -> "Event.performer"
* agent.type -> "Event.performer.function"
* agent.who -> "Event.performer.actor"