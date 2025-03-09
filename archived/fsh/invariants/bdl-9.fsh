Invariant: bdl-9
Description: "A document must have an identifier with a system and a value"
* severity = #error
* expression = "type = 'document' implies (identifier.system.exists() and identifier.value.exists())"
* xpath = "not(f:type/@value = 'document') or exists(f:identifier/f:system) or exists(f:identifier/f:value)"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"