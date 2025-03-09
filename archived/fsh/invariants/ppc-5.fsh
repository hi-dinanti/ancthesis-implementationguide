Invariant: ppc-5
Description: "IF Scope=treatment, there must be a patient"
* severity = #error
* expression = "patient.exists() or scope.coding.where(system='something' and code='treatment').exists().not()"
* xpath = "exists(f:patient) or not(exists(f:scope/f:coding[f:system/@value='something' and f:code/@value='treatment'])))"
* source = "http://hl7.org/fhir/StructureDefinition/Consent"