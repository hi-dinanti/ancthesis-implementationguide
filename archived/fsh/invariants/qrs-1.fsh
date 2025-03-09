Invariant: qrs-1
Description: "Nested item can't be beneath both item and answer"
* severity = #error
* expression = "(answer.exists() and item.exists()).not()"
* xpath = "not(exists(f:answer) and exists(f:item))"
* source = "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"