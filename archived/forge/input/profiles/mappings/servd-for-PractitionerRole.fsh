Mapping: servd-for-PractitionerRole
Id: servd
Title: "ServD"
Source: PractitionerRole
Target: "http://www.omg.org/spec/ServD/1.0/"
* -> "ServiceSiteProvider"
* identifier -> "./Identifiers"
* period -> "(ServD maps Practitioners and Organizations via another entity, so this concept is not available)"
* code -> "(ServD maps Practitioners and Organizations via another entity, so this concept is not available)"
* specialty -> "./Specialty"
* location -> "(ServD maps Practitioners and Organizations via another entity, so this concept is not available)<br/> However these are accessed via the Site.ServiceSite.ServiceSiteProvider record. (The Site has the location)"