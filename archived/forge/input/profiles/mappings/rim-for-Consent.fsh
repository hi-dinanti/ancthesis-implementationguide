Mapping: rim-for-Consent
Id: rim
Title: "RIM Mapping"
Source: Consent
Target: "http://hl7.org/v3"
* -> "FinancialConsent"
* identifier -> ".id"
* status -> ".statusCode"
* category -> "CNTRCT"
* patient -> "Role"
* dateTime -> "FinancialConsent effectiveTime"
* provision.data -> "Role"