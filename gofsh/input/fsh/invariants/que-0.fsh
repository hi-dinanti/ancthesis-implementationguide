Invariant: que-0
Description: "Name should be usable as an identifier for the module by machine processing applications such as code generation"
* severity = #warning
* expression = "name.matches('[A-Z]([A-Za-z0-9_]){0,254}')"
* xpath = "not(exists(f:name/@value)) or matches(f:name/@value, '[A-Z]([A-Za-z0-9_]){0,254}')"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"