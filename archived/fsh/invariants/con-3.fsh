Invariant: con-3
Description: "Condition.clinicalStatus SHALL be present if verificationStatus is not entered-in-error and category is problem-list-item"
* severity = #warning
* expression = "clinicalStatus.exists() or verificationStatus.coding.where(system='http://terminology.hl7.org/CodeSystem/condition-ver-status' and code = 'entered-in-error').exists() or category.select($this='problem-list-item').empty()"
* xpath = "exists(f:clinicalStatus) or exists(f:verificationStatus/f:coding/f:code/@value='entered-in-error') or not(exists(category[@value='problem-list-item']))"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice"
* extension[0].valueBoolean = true
* extension[1].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice-explanation"
* extension[1].valueMarkdown = "Most systems will expect a clinicalStatus to be valued for problem-list-items that are managed over time, but might not need a clinicalStatus for point in time encounter-diagnosis."
* source = "http://hl7.org/fhir/StructureDefinition/Condition"