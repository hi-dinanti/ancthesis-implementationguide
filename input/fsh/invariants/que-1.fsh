Invariant: que-1
Description: "Group items must have nested items, display items cannot have nested items"
* severity = #error
* expression = "(type='group' implies item.empty().not()) and (type.trace('type')='display' implies item.trace('item').empty())"
* xpath = "not((f:type/@value='group' and not(f:item)) or (f:type/@value='display' and f:item))"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"