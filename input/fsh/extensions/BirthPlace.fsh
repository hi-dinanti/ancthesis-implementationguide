Extension: BirthPlace
Parent: $Extension
Id: birthPlace
Title: "Birth Place"
Description: "The registered place of birth of the patient. A sytem may use the address.text if they don't store the birthPlace address in discrete elements."
Context: Patient
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-02-02T03:23:15.404+00:00"
* ^status = #draft
* ^date = "2023-05-12T03:38:24.117026+00:00"
* ^publisher = "HL7"
* . ..1
* . ^short = "Place of Birth for patient"
* . ^definition = "The registered place of birth of the patient. A sytem may use the address.text if they don't store the birthPlace address in discrete elements."
* value[x] 1..
* value[x] only Address
* value[x].extension ^slicing.discriminator.type = #value
* value[x].extension ^slicing.discriminator.path = "url"
* value[x].extension ^slicing.rules = #open
* value[x].extension ^min = 0
* value[x].extension contains AdministrativeCode named administrativeCode 0..1
* value[x].extension[administrativeCode].extension 2..
* value[x].extension[administrativeCode].extension ^slicing.discriminator.type = #value
* value[x].extension[administrativeCode].extension ^slicing.discriminator.path = "url"
* value[x].extension[administrativeCode].extension ^slicing.rules = #open
* value[x].extension[administrativeCode].extension[city] ^sliceName = "city"
* value[x].country from $iso3166-1-2_1 (required)
* value[x].country ^short = "Country ISO 3166 2 letter code"