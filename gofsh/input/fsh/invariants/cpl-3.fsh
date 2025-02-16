Invariant: cpl-3
Description: "Provide a reference or detail, not both"
* severity = #error
* expression = "detail.empty() or reference.empty()"
* xpath = "not(exists(f:detail)) or not(exists(f:reference))"
* source = "http://hl7.org/fhir/StructureDefinition/CarePlan"