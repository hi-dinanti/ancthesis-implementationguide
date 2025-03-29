Extension: Disability
Id: Disability
Title: "disability"
Description: "Value(s) identifying physical or mental condition(s) that limits a person's movements, senses, or activities."
Context: Patient
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/patient-disability"
* ^status = #draft
* ^publisher = "Ministry of Health Indonesia"
* . ^short = "Condition(s) limiting movement, senses, or activities"
* . ^definition = "Value(s) identifying physical or mental condition(s) that limits a person's movements, senses, or activities."
* value[x] 1..
* value[x] only CodeableConcept