Invariant: ait-2
Description: "AllergyIntolerance.clinicalStatus SHALL NOT be present if verification Status is entered-in-error"
* severity = #error
* expression = "verificationStatus.coding.where(system = 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification' and code = 'entered-in-error').empty() or clinicalStatus.empty()"
* xpath = "not(f:verificationStatus/f:coding/f:code/@value='entered-in-error') or not(exists(f:clinicalStatus))"
* source = "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance"