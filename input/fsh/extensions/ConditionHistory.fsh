Extension: ConditionHistory
Id: ConditionHistory
Context: Specimen
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/ConditionHistory"
* extension contains
    status 0..* and
    condition 0..* and
    period 0..*
* extension[status].value[x] only code
* extension[condition].value[x] only CodeableConcept
* extension[period].value[x] only Period