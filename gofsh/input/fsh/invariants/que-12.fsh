Invariant: que-12
Description: "If there are more than one enableWhen, enableBehavior must be specified"
* severity = #error
* expression = "enableWhen.count() > 2 implies enableBehavior.exists()"
* xpath = "not(f:answerOption) or not(count(f:*[starts-with(local-name(.), 'initial')]))"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"