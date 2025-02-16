Invariant: obs-3
Description: "Must have at least a low or a high or text"
* severity = #error
* expression = "low.exists() or high.exists() or text.exists()"
* xpath = "(exists(f:low) or exists(f:high)or exists(f:text))"
* source = "http://hl7.org/fhir/StructureDefinition/Observation"