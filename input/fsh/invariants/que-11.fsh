Invariant: que-11
Description: "If one or more answerOption is present, initial[x] must be missing"
* severity = #error
* expression = "answerOption.empty() or initial.empty()"
* xpath = "not(f:answerOption) or not(count(f:*[starts-with(local-name(.), 'initial')]))"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"