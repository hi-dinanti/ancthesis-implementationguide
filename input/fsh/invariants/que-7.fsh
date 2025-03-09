Invariant: que-7
Description: "If the operator is 'exists', the value must be a boolean"
* severity = #error
* expression = "operator = 'exists' implies (answer is Boolean)"
* xpath = "f:operator/@value != 'exists' or exists(f:answerBoolean)"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"