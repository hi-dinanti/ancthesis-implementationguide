Mapping: v2-for-Immunization
Id: v2
Title: "HL7 v2 Mapping"
Source: Immunization
Target: "http://hl7.org/v2"
* -> "VXU_V04"
* vaccineCode -> "RXA-5"
* patient -> "PID-3"
* encounter -> "PV1-19"
* occurrence[x] -> "RXA-3"
* primarySource -> "RXA-9"
* reportOrigin -> "RXA-9"
* location -> "RXA-27  (or RXA-11, deprecated as of v2.7)"
* manufacturer -> "RXA-17"
* lotNumber -> "RXA-15"
* expirationDate -> "RXA-16"
* site -> "RXR-2"
* route -> "RXR-1"
* doseQuantity -> "RXA-6 / RXA-7"
* performer -> "ORC-12 / RXA-10"
* note -> "OBX-5 : OBX-3 = 48767-8"
* isSubpotent -> "RXA-20 = PA (partial administration)"
* education.documentType -> "OBX-5 : OBX-3 = 69764-9"
* education.publicationDate -> "OBX-5 : OBX-3 = 29768-9"
* education.presentationDate -> "OBX-5 : OBX-3 = 29769-7"
* programEligibility -> "OBX-5 : OBX-3 = 64994-7"
* reaction -> "OBX-3"
* reaction.date -> "OBX-14 (ideally this would be reported in an IAM segment, but IAM is not part of the HL7 v2 VXU message - most likely would appear in OBX segments if at all)"
* reaction.detail -> "OBX-5"
* reaction.reported -> "(HL7 v2 doesn't seem to provide for this)"