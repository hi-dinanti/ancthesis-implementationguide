Mapping: cdanetv4-for-CoverageEligibilityResponse
Id: cdanetv4
Title: "Canadian Dental Association eclaims standard"
Source: CoverageEligibilityResponse
Target: "http://www.cda-adc.ca/en/services/cdanet/"
* patient -> "C06,C07,C08, C05, C04"
* serviced[x] -> "F09"
* requestor -> "B01"
* request -> "A02|G01"
* insurance.item.provider -> "B01"
* preAuthRef -> "F03"
* form -> "G42"