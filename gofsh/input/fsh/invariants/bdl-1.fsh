Invariant: bdl-1
Description: "total only when a search or history"
* severity = #error
* expression = "total.empty() or (type = 'searchset') or (type = 'history')"
* xpath = "not(f:total) or (f:type/@value = 'searchset') or (f:type/@value = 'history')"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"