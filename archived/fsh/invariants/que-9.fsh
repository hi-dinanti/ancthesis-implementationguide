Invariant: que-9
Description: "Read-only can't be specified for \"display\" items"
* severity = #error
* expression = "type!='display' or readOnly.empty()"
* xpath = "not(f:type/@value=('group', 'display') and f:*[starts-with(local-name(.), 'initial')])"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"