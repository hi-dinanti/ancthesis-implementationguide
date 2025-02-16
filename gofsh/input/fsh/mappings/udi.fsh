Mapping: udi
Id: udi
Title: "UDI Mapping"
Source: Device
Target: "http://fda.gov/UDI"
* identifier -> "The serial number which is a component of the production identifier (PI), a conditional, variable portion of a UDI.   The identifier.type code should be set to “SNO”(Serial Number) and the system left empty."
* udiCarrier.deviceIdentifier -> "The device identifier (DI), a mandatory, fixed portion of a UDI that identifies the labeler and the specific version or model of a device."
* udiCarrier.issuer -> "All UDIs are to be issued under a system operated by an Jurisdiction-accredited issuing agency.\nGS1 DIs: \n http://hl7.org/fhir/NamingSystem/gs1\nHIBCC DIs:\n http://hl7.org/fhir/NamingSystem/hibcc\nICCBBA DIs for blood containers:\n http://hl7.org/fhir/NamingSystem/iccbba-blood\nICCBA DIs for other devices:\n http://hl7.org/fhir/NamingSystem/iccbba-other"
* udiCarrier.carrierAIDC -> "A unique device identifier (UDI) on a device label a form that uses automatic identification and data capture (AIDC) technology."
* udiCarrier.carrierHRF -> "A unique device identifier (UDI) on a device label in plain text"
* distinctIdentifier -> "The lot or batch number within which a device was manufactured - which is a component of the production identifier (PI), a conditional, variable portion of a UDI."
* manufacturer -> "N/A"
* manufactureDate -> "The date a specific device was manufactured - which is a component of the production identifier (PI), a conditional, variable portion of a UDI.  For FHIR, The datetime syntax must converted to YYYY-MM-DD[THH:MM:SS].  If hour is present, the minutes and seconds should both be set to “00”."
* expirationDate -> "the expiration date of a specific device -  which is a component of the production identifier (PI), a conditional, variable portion of a UDI.  For FHIR, The datetime syntax must converted to YYYY-MM-DD[THH:MM:SS].  If hour is present, the minutes and seconds should both be set to “00”."
* lotNumber -> "The lot or batch number within which a device was manufactured - which is a component of the production identifier (PI), a conditional, variable portion of a UDI."