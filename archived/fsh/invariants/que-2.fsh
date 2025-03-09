Invariant: que-2
Description: "The link ids for groups and questions must be unique within the questionnaire"
* severity = #error
* expression = "descendants().linkId.isDistinct()"
* xpath = "count(descendant::f:linkId/@value)=count(distinct-values(descendant::f:linkId/@value))"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"