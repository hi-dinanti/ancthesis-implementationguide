Mapping: cda-for-Immunization
Id: cda
Title: "CDA (R2)"
Source: Immunization
Target: "http://hl7.org/v3/cda"
* identifier -> "ClinicalDocument/component/StructuredBody/component/section/entry/substanceAdministration/id"
* vaccineCode -> "ClinicalDocument/component/StructuredBody/component/section/entry/substanceAdministration/consumable/manfacturedProduct/manufacturedMaterial/realmCode/code"
* occurrence[x] -> "ClinicalDocument/component/StructuredBody/component/section/entry/substanceAdministration/effectiveTime/value"
* manufacturer -> "ClinicalDocument/component/StructuredBody/component/section/entry/substanceAdministration/consumable/manfacturedProduct/manufacuturerOrganization/name"
* lotNumber -> "ClinicalDocument/component/StructuredBody/component/section/entry/substanceAdministration/consumable/manfacturedProduct/manufacturedMaterial/lotNumberText"
* site -> "ClinicalDocument/component/StructuredBody/component/section/entry/substanceAdministration/approachSiteCode/code"
* route -> "ClinicalDocument/component/StructuredBody/component/section/entry/substanceAdministration/routeCode/code"