ValueSet: LabNominalResultVS
Id: LabNominalResultVS
Title: "Laboratory Nominal Results"
Description: "Codes representing positive and negative results for any nominal laboratory procedure ANC."
* ^url = "https://fhir.pwskia.id/r4/ValueSet/ANCRhesusVS"
* include codes from system http://loinc.org where code = #LA6576-8 "Positive"
* include codes from system http://loinc.org where code = #LA6577-6 "Negative"