Mapping: v2-for-AllergyIntolerance
Id: v2
Title: "HL7 v2 Mapping"
Source: AllergyIntolerance
Target: "http://hl7.org/v2"
* identifier -> "IAM-7"
* type -> "IAM-9"
* category -> "AL1-2"
* criticality -> "AL1-4"
* code -> "AL1-3 / IAM-3"
* patient -> "(PID-3)"
* recordedDate -> "IAM-13"
* asserter -> "IAM-14 (if patient) / IAM-18 (if practitioner)"
* reaction.manifestation -> "AL1-5"
* reaction.onset -> "AL1-6"