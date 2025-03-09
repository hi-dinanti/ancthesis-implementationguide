Invariant: bdl-12
Description: "A message must have a MessageHeader as the first resource"
* severity = #error
* expression = "type = 'message' implies entry.first().resource.is(MessageHeader)"
* xpath = "not(f:type/@value='message') or f:entry[1]/f:resource/f:MessageHeader"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"