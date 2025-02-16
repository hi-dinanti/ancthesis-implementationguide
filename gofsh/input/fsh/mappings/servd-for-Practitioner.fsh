Mapping: servd-for-Practitioner
Id: servd
Title: "ServD"
Source: Practitioner
Target: "http://www.omg.org/spec/ServD/1.0/"
* -> "Provider"
* identifier -> "./Identifiers"
* name -> "./PreferredName (GivenNames, FamilyName, TitleCode)"
* telecom -> "./ContactPoints"
* address -> "./Addresses"
* gender -> "./GenderCode"
* birthDate -> "(not represented in ServD)"
* photo -> "./ImageURI (only supports the URI reference)"
* qualification -> "./Qualifications"
* qualification.code -> "./Qualifications.Value"
* qualification.period -> "./Qualifications.StartDate and ./Qualifications.EndDate"
* communication -> "./Languages.LanguageSpokenCode"