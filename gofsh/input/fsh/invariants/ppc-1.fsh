Invariant: ppc-1
Description: "Either a Policy or PolicyRule"
* severity = #error
* expression = "policy.exists() or policyRule.exists()"
* xpath = "exists(f:policy) or exists(f:policyRule)"
* source = "http://hl7.org/fhir/StructureDefinition/Consent"