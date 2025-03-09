Invariant: ait-1
Description: "AllergyIntolerance.clinicalStatus SHALL be present if verificationStatus is not entered-in-error."
* severity = #error
* expression = "verificationStatus.coding.where(system = 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification' and code = 'entered-in-error').exists() or clinicalStatus.exists()"
* xpath = "f:verificationStatus/f:coding/f:code/@value='entered-in-error' or exists(f:clinicalStatus)"
* source = "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance"