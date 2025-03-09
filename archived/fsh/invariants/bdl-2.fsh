Invariant: bdl-2
Description: "entry.search only when a search"
* severity = #error
* expression = "entry.search.empty() or (type = 'searchset')"
* xpath = "not(f:entry/f:search) or (f:type/@value = 'searchset')"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"