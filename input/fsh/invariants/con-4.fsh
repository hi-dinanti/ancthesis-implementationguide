Invariant: con-4
Description: "If condition is abated, then clinicalStatus must be either inactive, resolved, or remission"
* severity = #error
* expression = "abatement.empty() or clinicalStatus.coding.where(system='http://terminology.hl7.org/CodeSystem/condition-clinical' and (code='resolved' or code='remission' or code='inactive')).exists()"
* xpath = "not(exists(*[starts-with(local-name(.), 'abatement')])) or exists(f:clinicalStatus/f:coding[f:system/@value='http://terminology.hl7.org/CodeSystem/condition-clinical' and f:code/@value=('resolved', 'remission', 'inactive')])"
* source = "http://hl7.org/fhir/StructureDefinition/Condition"