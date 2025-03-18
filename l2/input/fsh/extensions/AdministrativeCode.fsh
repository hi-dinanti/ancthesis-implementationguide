Extension: AdministrativeCode
Id: AdministrativeCode
Title: "Administrative Code"
Description: "The administrative code of the address, represented in six levels: province, city/regency, district, village, rt and rw."
Context: Address
* ^meta.lastUpdated = "2025-02-11T05:43:54.2842925+00:00"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2022-01-28T01:29:44.9714147+00:00"
* . ^short = "The regional administrative code"
* . ^definition = "The regional administrative code of the address, represented in six levels: province, city/regency, district, village, rt and rw."
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