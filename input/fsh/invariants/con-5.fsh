Invariant: con-5
Description: "Condition.clinicalStatus SHALL NOT be present if verification Status is entered-in-error"
* severity = #error
* expression = "verificationStatus.coding.where(system='http://terminology.hl7.org/CodeSystem/condition-ver-status' and code='entered-in-error').empty() or clinicalStatus.empty()"
* xpath = "not(exists(f:verificationStatus/f:coding[f:system/@value='http://terminology.hl7.org/CodeSystem/condition-ver-status' and f:code/@value='entered-in-error'])) or not(exists(f:clinicalStatus))"
* source = "http://hl7.org/fhir/StructureDefinition/Condition"