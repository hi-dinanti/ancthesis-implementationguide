Mapping: v2-for-Condition
Id: v2
Title: "HL7 v2 Mapping"
Source: Condition
Target: "http://hl7.org/v2"
* -> "PPR message"
* clinicalStatus -> "PRB-14"
* verificationStatus -> "PRB-13"
* category -> "'problem' if from PRB-3. 'diagnosis' if from DG1 segment in PV1 message"
* severity -> "PRB-26 / ABS-3"
* code -> "PRB-3"
* subject -> "PID-3"
* encounter -> "PV1-19 (+PV1-54)"
* onset[x] -> "PRB-16"
* recordedDate -> "REL-11"
* asserter -> "REL-7.1 identifier + REL-7.12 type code"
* stage.summary -> "PRB-14"
* note -> "NTE child of PRB"