Invariant: que-4
Description: "A question cannot have both answerOption and answerValueSet"
* severity = #error
* expression = "answerOption.empty() or answerValueSet.empty()"
* xpath = "not(f:answerValueSet and f:answerOption)"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"