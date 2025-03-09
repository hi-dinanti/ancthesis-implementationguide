Invariant: que-13
Description: "Can only have multiple initial values for repeating items"
* severity = #error
* expression = "repeats=true or initial.count() <= 1"
* xpath = "f:repeats/@value='true' or count(f:initial)<=1"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"