Invariant: cmp-2
Description: "A section can only have an emptyReason if it is empty"
* severity = #error
* expression = "emptyReason.empty() or entry.empty()"
* xpath = "not(exists(f:emptyReason) and exists(f:entry))"
* source = "http://hl7.org/fhir/StructureDefinition/Composition"