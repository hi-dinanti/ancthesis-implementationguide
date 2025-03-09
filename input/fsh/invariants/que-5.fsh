Invariant: que-5
Description: "Only 'choice' and 'open-choice' items can have answerValueSet"
* severity = #error
* expression = "(type ='choice' or type = 'open-choice' or type = 'decimal' or type = 'integer' or type = 'date' or type = 'dateTime' or type = 'time' or type = 'string' or type = 'quantity') or (answerValueSet.empty() and answerOption.empty())"
* xpath = "f:type/@value=('choice','open-choice','decimal','integer','date','dateTime','time','string','quantity',') or not(f:answerOption or f:answerValueSet)"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"