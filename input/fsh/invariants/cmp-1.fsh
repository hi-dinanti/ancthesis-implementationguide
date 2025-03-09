Invariant: cmp-1
Description: "A section must contain at least one of text, entries, or sub-sections"
* severity = #error
* expression = "text.exists() or entry.exists() or section.exists()"
* xpath = "exists(f:text) or exists(f:entry) or exists(f:section)"
* source = "http://hl7.org/fhir/StructureDefinition/Composition"