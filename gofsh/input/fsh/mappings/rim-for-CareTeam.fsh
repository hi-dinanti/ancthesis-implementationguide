Mapping: rim-for-CareTeam
Id: rim
Title: "RIM Mapping"
Source: CareTeam
Target: "http://hl7.org/v3"
* participant -> ".participation[typeCode=PRF]"
* participant.role -> ".functionCode"
* participant.member -> ".role"