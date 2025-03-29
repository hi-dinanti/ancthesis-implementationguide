Profile: ANCCondition
Parent: SatuSehatCondition
Id: ANCCondition
Description: "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept during prenatal visit that has risen to a level of concern."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/Condition"
* ^status = #active
* ^type = "Condition"
* encounter 1..1 MS
* encounter only Reference(ANCEncounter)
* subject only Reference(ANCPatient)