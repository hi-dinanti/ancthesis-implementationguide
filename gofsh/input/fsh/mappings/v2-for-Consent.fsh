Mapping: v2-for-Consent
Id: v2
Title: "HL7 v2 Mapping"
Source: Consent
Target: "http://hl7.org/v2"
* -> "CON"
* status -> "HL7 Table 0498 - Consent Status"
* category -> "HL7 Table 0497 - Consent Type"
* dateTime -> "Field 13/ Consent Decision Date"
* performer -> "Field 24/ ConsenterID"
* source[x] -> "Field 19 Informational Material Supplied Indicator"