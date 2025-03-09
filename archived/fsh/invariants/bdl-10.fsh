Invariant: bdl-10
Description: "A document must have a date"
* severity = #error
* expression = "type = 'document' implies (timestamp.hasValue())"
* xpath = "not(f:type/@value = 'document') or exists(f:timestamp/@value)"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"