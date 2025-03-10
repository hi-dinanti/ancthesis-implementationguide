Mapping: rim-for-ObservationDefinition
Id: rim
Title: "RIM Mapping"
Source: ObservationDefinition
Target: "http://hl7.org/v3"
* -> "Observation[classCode=OBS, moodCode=DEF]"
* category -> ".outboundRelationship[typeCode=\"COMP].target[classCode=\"LIST\", moodCode=\"DEF\"].code"
* code -> "code"
* method -> "methodCode"