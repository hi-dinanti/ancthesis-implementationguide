Invariant: imm-1
Description: "One of documentType or reference SHALL be present"
* severity = #error
* expression = "documentType.exists() or reference.exists()"
* xpath = "exists(f:documentType) or exists(f:reference)"
* source = "http://hl7.org/fhir/StructureDefinition/Immunization"