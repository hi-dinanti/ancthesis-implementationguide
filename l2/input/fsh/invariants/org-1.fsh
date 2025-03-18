Invariant: org-1
Description: "The organization SHALL at least have a name or an identifier, and possibly more than one"
* severity = #error
* expression = "(identifier.count() + name.count()) > 0"
* xpath = "count(f:identifier | f:name) > 0"
* source = "http://hl7.org/fhir/StructureDefinition/Organization"