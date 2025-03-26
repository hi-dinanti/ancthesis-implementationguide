ValueSet: BloodGroupVS
Id: BloodGroupCodeVS
Title: "Blood Group ValueSet"
Description: "A ValueSet representing blood groups based on PrimaryCareLabValue codes."
* ^url = "https://fhir.pwskia.id/r4/ValueSet/BloodGroup"
* ^status = #active
* ^version = "1.0.0"
* ^publisher = "Ministry of Health Indonesia"

* include http://loinc.org#LA19710-5 "Group A"
* include http://loinc.org#LA19709-7 "Group B"
* include http://loinc.org#LA19708-9 "Group O"
* include http://loinc.org#LA28449-9 "Group AB"