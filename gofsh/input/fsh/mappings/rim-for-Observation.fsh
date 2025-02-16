Mapping: rim-for-Observation
Id: rim
Title: "RIM Mapping"
Source: Observation
Target: "http://hl7.org/v3"
* -> "Observation[classCode=OBS, moodCode=EVN]"
* identifier -> "id"
* basedOn -> ".inboundRelationship[typeCode=COMP].source[moodCode=EVN]"
* partOf -> ".outboundRelationship[typeCode=FLFS].target"
* status -> "status  Amended & Final are differentiated by whether it is the subject of a ControlAct event with a type of \"revise\""
* category -> ".outboundRelationship[typeCode=\"COMP].target[classCode=\"LIST\", moodCode=\"EVN\"].code"
* code -> "code"
* subject -> "participation[typeCode=RTGT]"
* focus -> "participation[typeCode=SBJ]"
* encounter -> "inboundRelationship[typeCode=COMP].source[classCode=ENC, moodCode=EVN]"
* effective[x] -> "effectiveTime"
* issued -> "participation[typeCode=AUT].time"
* performer -> "participation[typeCode=PRF]"
* value[x] -> "value"
* dataAbsentReason -> "value.nullFlavor"
* interpretation -> "interpretationCode"
* note -> "subjectOf.observationEvent[code=\"annotation\"].value"
* bodySite -> "targetSiteCode"
* method -> "methodCode"
* specimen -> "participation[typeCode=SPC].specimen"
* device -> "participation[typeCode=DEV]"
* referenceRange -> "outboundRelationship[typeCode=REFV]/target[classCode=OBS, moodCode=EVN]"
* referenceRange.low -> "value:IVL_PQ.low"
* referenceRange.high -> "value:IVL_PQ.high"
* referenceRange.type -> "interpretationCode"
* referenceRange.appliesTo -> "interpretationCode"
* referenceRange.age -> "outboundRelationship[typeCode=PRCN].targetObservationCriterion[code=\"age\"].value"
* referenceRange.text -> "value:ST"
* hasMember -> "outBoundRelationship"
* derivedFrom -> ".targetObservation"
* component -> "outBoundRelationship[typeCode=COMP]"
* component.code -> "code"
* component.value[x] -> "value"
* component.dataAbsentReason -> "value.nullFlavor"
* component.interpretation -> "interpretationCode"
* component.referenceRange -> "outboundRelationship[typeCode=REFV]/target[classCode=OBS, moodCode=EVN]"
* component.referenceRange.low -> "value:IVL_PQ.low"
* component.referenceRange.high -> "value:IVL_PQ.high"
* component.referenceRange.type -> "interpretationCode"
* component.referenceRange.appliesTo -> "interpretationCode"
* component.referenceRange.age -> "outboundRelationship[typeCode=PRCN].targetObservationCriterion[code=\"age\"].value"
* component.referenceRange.text -> "value:ST"