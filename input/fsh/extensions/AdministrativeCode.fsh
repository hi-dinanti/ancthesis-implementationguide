Extension: AdministrativeCode
Parent: $Extension
Id: administrativeCode
Title: "Administrative Code"
Description: "The administrative code of the address, represented in six levels: province, city/regency, district, village, rt and rw."
Context: Address, Patient.address
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2022-02-02T03:21:58.8+00:00"
* ^date = "2023-05-12T03:38:24.117026+00:00"
* . ^short = "The regional administrative code"
* . ^definition = "The regional administrative code of the address, represented in six levels: province, city/regency, district, village, rt and rw."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    rt 0..1 and
    rw 0..1 and
    village 0..1 and
    district 0..1 and
    city 0..1 and
    province 1..1
* extension[rt].value[x] only code
* extension[rw].value[x] only code
* extension[village].value[x] only code
* extension[district].value[x] only code
* extension[city].value[x] only code
* extension[province].value[x] only code
* url = "https://fhir.kemkes.go.id/r4/StructureDefinition/AdministrativeCode" (exactly)