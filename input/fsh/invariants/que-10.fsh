Invariant: que-10
Description: "Maximum length can only be declared for simple question types"
* severity = #error
* expression = "(type in ('boolean' | 'decimal' | 'integer' | 'string' | 'text' | 'url' | 'open-choice')) or maxLength.empty()"
* xpath = "f:type/@value=('boolean', 'decimal', 'integer', 'open-choice', 'string', 'text', 'url') or not(f:maxLength)"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"