Invariant: que-6
Description: "Required and repeat aren't permitted for display items"
* severity = #error
* expression = "type!='display' or (required.empty() and repeats.empty())"
* xpath = "not(f:type/@value='display' and (f:required or f:repeats))"
* source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"