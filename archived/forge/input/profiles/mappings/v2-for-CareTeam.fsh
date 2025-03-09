Mapping: v2-for-CareTeam
Id: v2
Title: "HL7 v2 Mapping"
Source: CareTeam
Target: "http://hl7.org/v2"
* participant -> "REL (REL.4 is always the Patient) ( or PRT?)"
* participant.role -> "REL.2 (or PRT-4?)"
* participant.member -> "REL.5 (or PRT-5 : ( PRV-4 {provider participations} ) / PRT-5 : ( PRV-4  {non-provider person participations} ) / PRT-5 : ( PRV-4 = (patient non-subject of care) ) / PRT-8?)"