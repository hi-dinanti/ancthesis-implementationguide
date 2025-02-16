Invariant: con-1
Description: "Stage SHALL have summary or assessment"
* severity = #error
* expression = "summary.exists() or assessment.exists()"
* xpath = "exists(f:summary) or exists(f:assessment)"
* source = "http://hl7.org/fhir/StructureDefinition/Condition"