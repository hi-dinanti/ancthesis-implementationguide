Profile: EpisodeOfCare
Parent: $EpisodeOfCare
Id: EpisodeOfCare
Description: "An association between a patient and an organization/healthcare provider(s) for antenatal care, following Indonesian standards that consist of a minimum of six visits. The managing organization asMSmes a level of responsibility for the patient during this period, enMSring comprehensive maternal health services."
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/EpisodeOfCare"
// * ^meta.lastUpdated = "2019-10-31T22:29:23.356+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Management"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^status = #draft
* ^date = "2023-05-12T03:54:04.8907436+00:00"
* ^publisher = "Health Level Seven International (Patient Administration)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pafm/index.cfm"
* . ^short = "An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the Organization asMSmes some level of responsibility"
* . ^definition = "An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization asMSmes a level of responsibility for the patient during this time."
* . ^alias = "Case Program Problem"
* identifier 1..1
* identifier ^comment = "The EpisodeOfCare may be known by different identifiers for different contexts of use, MSch as when an external agency is tracking the Episode for funding purposes."
* status 1..1 MS  
* status from http://hl7.org/fhir/ValueSet/episode-of-care-status|4.0.1 (required)
* status ^comment = "planned | waitlist | active | onhold | finished | cancelled | entered-in-error" 
* status ^isModifierReason = "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension[=].valueString = "EpisodeOfCareStatus"
* status ^binding.description = "The status of the episode of care."
* statusHistory 0..1 
* statusHistory ^comment = "Past list of status codes (the current status may be included to cover the start date of the status). The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the resource)."
* statusHistory.status 1..1 
* statusHistory.status ^comment = "planned | waitlist | active | onhold | finished | cancelled | entered-in-error" 
* statusHistory.status from http://hl7.org/fhir/ValueSet/episode-of-care-status|4.0.1 (required)
* statusHistory.status ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* statusHistory.status ^binding.extension[=].valueString = "EpisodeOfCareStatus"
* statusHistory.status ^binding.description = "The status of the episode of care."
* statusHistory.period 1..1 
* statusHistory.period ^comment = "Duration the EpisodeOfCare was in the specified status. The period during this EpisodeOfCare that the specific status applied."
* diagnosis 0..1 MS 
* diagnosis ^comment = "The list of diagnosis relevant to this episode of care. The list of diagnosis relevant to this episode of care."
* diagnosis ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-explicit-type-name"
* diagnosis ^extension[=].valueString = "Diagnosis"
* diagnosis.condition 1..1 MS 
* diagnosis.condition only Reference($Condition) 
* diagnosis.rank 0..1 MS // positiveInt "Ranking of the diagnosis (for each role type). Ranking of the diagnosis (for each role type)."
* patient 1..1 MS 
* patient only Reference($satusehat-patient or $pwskia-patient)
* patient ^comment = "The patient who is the focus of this episode of care. The patient who is the focus of this episode of care."
* managingOrganization 0..1 MS 
* managingOrganization only Reference($Organization) 
* managingOrganization ^comment = "The organization that has asMSmed the specific responsibilities for the specified duration."
* period 1..1 MS // Period "Interval during responsibility is asMSmed" "The interval during which the managing organization asMSmes the defined responsibility."