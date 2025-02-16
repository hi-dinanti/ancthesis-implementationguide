Invariant: con-2
Description: "evidence SHALL have code or details"
* severity = #error
* expression = "code.exists() or detail.exists()"
* xpath = "exists(f:code) or exists(f:detail)"
* source = "http://hl7.org/fhir/StructureDefinition/Condition"