ValueSet: ServiceRequestCodes
Id: ServiceRequestCodes
Title: "Service Request Codes"
Description: "Codes for various types of service requests, including diagnostics, procedures, and referrals."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^compose.include[0].system = "http://snomed.info/sct"

// Types of Referral
* ^compose.include[0].concept[+].code = #3457005
* ^compose.include[0].concept[=].display = "Patient referral"
* ^compose.include[0].concept[+].code = #306098008
* ^compose.include[0].concept[=].display = "Self-referral"

// Location Codes
ValueSet: LocationCodes
Id: location-codes
Title: "Location Codes"
Description: "Codes representing different healthcare facilities and service locations."
* ^status = #active
* ^compose.include[0].system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"