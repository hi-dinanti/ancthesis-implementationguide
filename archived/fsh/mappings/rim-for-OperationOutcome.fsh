Mapping: rim-for-OperationOutcome
Id: rim
Title: "RIM Mapping"
Source: OperationOutcome
Target: "http://hl7.org/v3"
* -> "Grouping is handled through multiple repetitions from whatever context references the outcomes (no specific grouper required)"
* issue -> "AcknowledgementDetail or Observation[classCode=\"ALRT\" and moodCode=\"EVN\"]"
* issue.severity -> "./typeCode[parent::AcknowledgmentDetail] or unique(./inboundRelationship[parent::Observation and typeCode='SUBJ' and isNormalActRelationship()]/source[classCode=\"OBS\" and moodCode=\"EVN\" and implies(code, ActCode#SEV and isNormalAct())/value[xsi:type=\"CD\"]"
* issue.code -> "./code"
* issue.details -> "./code"
* issue.diagnostics -> "./text[parent::AcknowledgmentDetail]"
* issue.location -> "./location[parent::AcknowledgmentDetail]"
* issue.expression -> "./location[parent::AcknowledgmentDetail]"