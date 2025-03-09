Invariant: que-8
Description: "Initial values can't be specified for groups or display items"
* severity = #error
* expression = "(type!='group' and type!='display') or initial.empty()"
* xpath = "not(f:type/@value=('group', 'display') and f:*[starts-with(local-name(.), 'initial')])"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"