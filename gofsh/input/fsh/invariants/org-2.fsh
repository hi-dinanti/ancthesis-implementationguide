Invariant: org-2
Description: "An address of an organization can never be of use 'home'"
* severity = #error
* expression = "where(use = 'home').empty()"
* xpath = "count(f:use[@value='home']) = 0"
* source = "http://hl7.org/fhir/StructureDefinition/Organization"