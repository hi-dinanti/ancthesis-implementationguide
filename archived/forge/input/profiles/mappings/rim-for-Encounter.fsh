Mapping: rim-for-Encounter
Id: rim
Title: "RIM Mapping"
Source: Encounter
Target: "http://hl7.org/v3"
* -> "Encounter[@moodCode='EVN']"
* identifier -> ".id"
* status -> ".statusCode"
* class -> ".inboundRelationship[typeCode=SUBJ].source[classCode=LIST].code"
* type -> ".code"
* priority -> ".priorityCode"
* subject -> ".participation[typeCode=SBJ]/role[classCode=PAT]"
* basedOn -> ".reason.ClinicalDocument"
* participant -> ".participation[typeCode=PFM]"
* participant.type -> ".functionCode"
* participant.period -> ".time"
* participant.individual -> ".role"
* appointment -> ".outboundRelationship[typeCode=FLFS].target[classCode=ENC, moodCode=APT]"
* period -> ".effectiveTime (low & high)"
* length -> ".lengthOfStayQuantity"
* reasonCode -> ".reasonCode"
* reasonReference -> ".reasonCode"
* diagnosis -> ".outboundRelationship[typeCode=RSON]"
* diagnosis.condition -> ".outboundRelationship[typeCode=RSON].target"
* diagnosis.rank -> ".outboundRelationship[typeCode=RSON].priority"
* account -> ".pertains.A_Account"
* hospitalization -> ".outboundRelationship[typeCode=COMP].target[classCode=ENC, moodCode=EVN]"
* hospitalization.preAdmissionIdentifier -> ".id"
* hospitalization.origin -> ".participation[typeCode=ORG].role"
* hospitalization.admitSource -> ".admissionReferralSourceCode"
* hospitalization.dietPreference -> ".outboundRelationship[typeCode=COMP].target[classCode=SBADM, moodCode=EVN, code=\"diet\"]"
* hospitalization.specialCourtesy -> ".specialCourtesiesCode"
* hospitalization.specialArrangement -> ".specialArrangementCode"
* hospitalization.destination -> ".participation[typeCode=DST]"
* hospitalization.dischargeDisposition -> ".dischargeDispositionCode"
* location -> ".participation[typeCode=LOC]"
* location.location -> ".role"
* location.status -> ".role.statusCode"
* location.period -> ".time"
* serviceProvider -> ".particiaption[typeCode=PFM].role"
* partOf -> ".inboundRelationship[typeCode=COMP].source[classCode=COMP, moodCode=EVN]"