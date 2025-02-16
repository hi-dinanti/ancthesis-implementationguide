Invariant: ppc-3
Description: "IF Scope=research, there must be a patient"
* severity = #error
* expression = "patient.exists() or scope.coding.where(system='something' and code='research').exists().not()"
* xpath = "exists(f:patient) or not(exists(f:scope/f:coding[f:system/@value='something' and f:code/@value='research'])))"
* source = "http://hl7.org/fhir/StructureDefinition/Consent"