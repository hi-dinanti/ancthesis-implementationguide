Extension: PolicyClass
Id: PolicyClass
Context: CoverageEligibilityResponse
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/PolicyClass"
* ^date = "2024-04-28T07:56:56.6589413+00:00"
* extension contains
    PolicyClass 0..* and
    excessPolicyClass 0..* and
    excessStatement 0..*
* extension[PolicyClass].value[x] only CodeableConcept
* extension[PolicyClass].value[x].coding ..1
* extension[excessPolicyClass].value[x] only CodeableConcept
* extension[excessPolicyClass].value[x].coding ..1
* extension[excessStatement].extension contains
    non-med 0..1 and
    aps 0..1 and
    exception 0..1 and
    excess 0..1
* extension[excessStatement].extension[non-med].value[x] only boolean
* extension[excessStatement].extension[aps].value[x] only boolean
* extension[excessStatement].extension[exception].value[x] only boolean
* extension[excessStatement].extension[excess].value[x] only boolean