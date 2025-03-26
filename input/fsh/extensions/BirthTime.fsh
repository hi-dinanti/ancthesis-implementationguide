Extension: BirthTime
Id: BirthTime
Title: "Birth Time"
Description: "The time of day that the Patient was born. This includes the date to ensure that the timezone information can be communicated effectively."
Context: Patient.birthDate
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/patient-birthTime"
* ^status = #active
// * ^date = "05/12/2023 04:00:39"
* ^publisher = "HL7"
* . 0..1
* . ^short = "Time of day of birth"
* . ^definition = "The time of day that the Patient was born. This includes the date to ensure that the timezone information can be communicated effectively."
* value[x] 1..
* value[x] only dateTime