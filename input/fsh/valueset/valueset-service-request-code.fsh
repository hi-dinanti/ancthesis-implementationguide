ValueSet: ServiceRequestCodes
Id: ServiceRequestCodes
Title: "Service Request Codes"
Description: "Codes for various types of service requests, including diagnostics, procedures, and referrals."
* ^status = #active
* ^experimental = false
* ^compose.include[0].system = "http://snomed.info/sct"

// Types of Referral
* ^compose.include[0].concept[+].code = #3457005
* ^compose.include[0].concept[=].display = "Patient referral"
* ^compose.include[0].concept[+].code = #306098008
* ^compose.include[0].concept[=].display = "Self-referral"