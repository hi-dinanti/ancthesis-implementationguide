Invariant: que-3
Description: "Display items cannot have a \"code\" asserted"
* severity = #error
* expression = "type!='display' or code.empty()"
* xpath = "not(f:type/@value='display' and f:code)"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"