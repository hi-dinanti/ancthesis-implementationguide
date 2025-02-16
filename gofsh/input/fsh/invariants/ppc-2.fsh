Invariant: ppc-2
Description: "IF Scope=privacy, there must be a patient"
* severity = #error
* expression = "patient.exists() or scope.coding.where(system='something' and code='patient-privacy').exists().not()"
* xpath = "exists(f:patient) or not(exists(f:scope/f:coding[f:system/@value='something' and f:code/@value='patient-privacy'])))"
* source = "http://hl7.org/fhir/StructureDefinition/Consent"