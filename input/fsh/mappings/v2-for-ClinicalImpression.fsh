Mapping: v2-for-ClinicalImpression
Id: v2
Title: "HL7 v2 Mapping"
Source: ClinicalImpression
Target: "http://hl7.org/v2"
* -> "Partial mapping for problem evaluation"
* identifier -> "PID-3"
* status -> "PRB-14"
* subject -> "PID-3"
* effective[x] -> "PRB-2"
* assessor -> "ROL-4"
* problem -> "PRB-3 / IAM-7"
* investigation.item -> "OBX-21"
* summary -> "OBX"
* finding.itemCodeableConcept -> "OBX"
* finding.itemReference -> "OBX"
* prognosisCodeableConcept -> "PRB-22"