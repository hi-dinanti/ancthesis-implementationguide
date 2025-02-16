Invariant: bdl-11
Description: "A document must have a Composition as the first resource"
* severity = #error
* expression = "type = 'document' implies entry.first().resource.is(Composition)"
* xpath = "not(f:type/@value='document') or f:entry[1]/f:resource/f:Composition"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"