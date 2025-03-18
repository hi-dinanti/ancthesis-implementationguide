Profile: Patient
Parent: $Patient
Id: Patient
Description: "Demographics and other administrative information about an individual or animal receiving care or other health-related services."
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/Patient"
* ^meta.versionId = "44"
* ^extension[0].url = "https://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Individuals"
* ^extension[+].url = "https://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #normative
* ^extension[+].url = "https://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[=].valueCode = #4.0.0
* ^extension[+].url = "https://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 5
* ^extension[+].url = "https://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "https://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^publisher = "Health Level Seven International (Patient Administration)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "https://fhir.kemkes.go.id/r4"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pafm/index.cfm"
* ^purpose = "Tracking patient is the center of the healthcare process."
* extension contains
    BirthPlace named birthPlace 0..* and
    Citizenship named citizenship 0..1 and
    Religion named religion 0..1 and
    CitizenshipStatus named citizenshipStatus 0..1 and
    Disability named disability 0..*
* extension[citizenship] ^short = "The patient's legal status as citizen of a country."
* extension[citizenship].extension[code] ^sliceName = "code"
* extension[citizenship].extension[code].value[x] from $iso3166-1-2 (required)
* extension[citizenship].extension[code].value[x] ^short = "Country code from the ISO 3166 Part 1 2-letter codes"
* extension[citizenship].extension[code].value[x] ^definition = "Nation code representing the citizenship of patient."
* extension[citizenship].extension[code].value[x].coding.system 1..
* extension[citizenship].extension[code].value[x].coding.system = "https://fhir.kemkes.go.id/r4/ValueSet/iso3166-1-2" (exactly)
* extension[religion] ^short = "The patient's professed religious affiliations."
* extension[religion].value[x].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation" (exactly)
* extension[religion].value[x].coding.code from $v3-ReligiousAffiliation (extensible)
* extension[citizenshipStatus] ^short = "Extensions Element for Citizenship Status"
* extension[citizenshipStatus] ^definition = "Citizenship Status in Indonesia are split into native / Warga Negara Indonesia (WNI) or foreign citizen / Warga Negara Asing (WNA)"
* extension[citizenshipStatus] ^comment = "WNI : Warga Negara Indonesia \nWNA : Warga Negara Asing"
* extension[citizenshipStatus] ^isModifier = false
* extension[citizenshipStatus].value[x] ^code[0].code = #WNI
* extension[citizenshipStatus].value[x] ^code[+].code = #WNA
* extension[citizenshipStatus].value[x] ^short = "WNI / WNA Status"
* extension[citizenshipStatus].value[x] ^definition = "WNI = Warga Negara Indonesia\nWNA = Warga Negara Asing"
* extension[disability] ^isModifier = false
* extension[disability].value[x].coding.system = "http://terminology.kemkes.go.id" (exactly)
* extension[disability].value[x].coding.code from $terminology (extensible)
* identifier 1..
* identifier ^definition = "An identifier for this patient. At least one identifier, the IHS Number is mandatory."
* identifier.use ^definition = "The purpose of this identifier. For IHS Number must equal \"official\"."
* identifier.type ^definition = "A coded type for the identifier that can be used to determine which identifier to use for a specific purpose. For IHS Number must equal \"IHS\"."
* identifier.system 1..
* identifier.system ^definition = "For IHS Number, \"system\" must equal to \"https://fhir.kemkes.go.id/id/ihs-number\"\nFor NIK, \"system\" must equal to \"https://fhir.kemkes.go.id/id/nik\""
* identifier.value 1..
* name 1..
* name.text 1..
* birthDate.extension contains BirthTime named birthTime 0..1
// * birthDate.extension[birthTime] only $patient-birthTime
// * birthDate.extension[birthTime] ^sliceName = "BirthTime"
* birthDate.extension[birthTime].value[x] ^short = "Datetime of birth"
* birthDate.extension[birthTime].value[x] ^definition = "The time of day that the patient was born. This includes the date to ensure that the timezone information can be communicated effectively."
* birthDate.extension[birthTime].value[x] ^comment = "Datetime of birth."
* address.extension contains AdministrativeCode named administrativeCode 0..1
* address.extension[administrativeCode].extension 2..
* address.extension[administrativeCode].extension[city] ^sliceName = "city"
* address.country ^short = "Country ISO 3166 2 letter code"
* multipleBirth[x] 1..
// * generalPractitioner only Reference($Organization or Practitioner or PractitionerRole)