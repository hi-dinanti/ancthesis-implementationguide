Extension: Package
Id: Package
Context: Claim
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/Package"
* ^status = #draft
* ^date = "2023-05-12T03:38:24.117026+00:00"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    tariffClass 1..1 and
    basePackage 1..1 and
    additionalPackage 0..*
* extension[tariffClass].value[x] only CodeableConcept
* extension[basePackage].extension 2..
* extension[basePackage].extension ^slicing.discriminator.type = #value
* extension[basePackage].extension ^slicing.discriminator.path = "url"
* extension[basePackage].extension ^slicing.rules = #open
* extension[basePackage].extension contains
    code 1..1 and
    value 1..1
* extension[basePackage].extension[code].value[x] only CodeableConcept
* extension[basePackage].extension[value].value[x] only integer
* extension[additionalPackage] ^min = 0
* extension[additionalPackage].extension 2..
* extension[additionalPackage].extension ^slicing.discriminator.type = #value
* extension[additionalPackage].extension ^slicing.discriminator.path = "url"
* extension[additionalPackage].extension ^slicing.rules = #open
* extension[additionalPackage].extension contains
    code 1..1 and
    value 1..1
* extension[additionalPackage].extension[code].value[x] only CodeableConcept
* extension[additionalPackage].extension[value].value[x] only integer