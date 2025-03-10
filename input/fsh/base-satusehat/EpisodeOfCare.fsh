Resource: EpisodeOfCare
Id: EpisodeOfCare
Description: "An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time."
* ^meta.lastUpdated = "2019-10-31T22:29:23.356+00:00"
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
* . ^short = "An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the Organization assumes some level of responsibility"
* . ^definition = "An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time."
* . ^alias = "Case Program Problem"
* identifier undefined..undefined Identifier "Business Identifier(s) relevant for this EpisodeOfCare" "The EpisodeOfCare may be known by different identifiers for different contexts of use, such as when an external agency is tracking the Episode for funding purposes."
* status 1..1 ?! SU code "planned | waitlist | active | onhold | finished | cancelled | entered-in-error" "planned | waitlist | active | onhold | finished | cancelled."
* status from http://hl7.org/fhir/ValueSet/episode-of-care-status|4.0.1 (required)
* status ^comment = "This element is labeled as a modifier because the status contains codes that mark the episode as not currently valid."
* status ^isModifierReason = "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension[=].valueString = "EpisodeOfCareStatus"
* status ^binding.description = "The status of the episode of care."
* statusHistory undefined..undefined BackboneElement "Past list of status codes (the current status may be included to cover the start date of the status)" "The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the resource)."
* statusHistory.status 1..1 code "planned | waitlist | active | onhold | finished | cancelled | entered-in-error" "planned | waitlist | active | onhold | finished | cancelled."
* statusHistory.status from http://hl7.org/fhir/ValueSet/episode-of-care-status|4.0.1 (required)
* statusHistory.status ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* statusHistory.status ^binding.extension[=].valueString = "EpisodeOfCareStatus"
* statusHistory.status ^binding.description = "The status of the episode of care."
* statusHistory.period 1..1 Period "Duration the EpisodeOfCare was in the specified status" "The period during this EpisodeOfCare that the specific status applied."
* type undefined..undefined SU CodeableConcept "Type/class  - e.g. specialist referral, disease management" "A classification of the type of episode of care; e.g. specialist referral, disease management, type of funded care."
* type from http://hl7.org/fhir/ValueSet/episodeofcare-type (example)
* type ^comment = "The type can be very important in processing as this could be used in determining if the EpisodeOfCare is relevant to specific government reporting, or other types of classifications."
* type ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension[=].valueString = "EpisodeOfCareType"
* type ^binding.description = "The type of the episode of care."
* diagnosis undefined..undefined SU BackboneElement "The list of diagnosis relevant to this episode of care" "The list of diagnosis relevant to this episode of care."
* diagnosis ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-explicit-type-name"
* diagnosis ^extension[=].valueString = "Diagnosis"
* diagnosis.condition 1..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Condition) "Conditions/problems/diagnoses this episode of care is for" "A list of conditions/problems/diagnoses that this episode of care is intended to be providing care for."
* diagnosis.role undefined..1 SU CodeableConcept "Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …)" "Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …)."
* diagnosis.role from http://hl7.org/fhir/ValueSet/diagnosis-role (preferred)
* diagnosis.role ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* diagnosis.role ^binding.extension[=].valueString = "DiagnosisRole"
* diagnosis.role ^binding.extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-isCommonBinding"
* diagnosis.role ^binding.extension[=].valueBoolean = true
* diagnosis.role ^binding.description = "The type of diagnosis this condition represents."
* diagnosis.rank undefined..1 SU positiveInt "Ranking of the diagnosis (for each role type)" "Ranking of the diagnosis (for each role type)."
* patient 1..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Patient) "The patient who is the focus of this episode of care" "The patient who is the focus of this episode of care."
* managingOrganization undefined..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Organization that assumes care" "The organization that has assumed the specific responsibilities for the specified duration."
* period undefined..1 SU Period "Interval during responsibility is assumed" "The interval during which the managing organization assumes the defined responsibility."
* referralRequest undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/ServiceRequest) "Originating Referral Request(s)" "Referral Request(s) that are fulfilled by this EpisodeOfCare, incoming referrals."
* careManager undefined..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole) "Care manager/care coordinator for the patient" "The practitioner that is the care manager/care coordinator for this patient."
* team undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/CareTeam) "Other practitioners facilitating this episode of care" "The list of practitioners that may be facilitating this episode of care for specific purposes."
* team ^alias = "CareTeam"
* account undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Account) "The set of accounts that may be used for billing for this EpisodeOfCare" "The set of accounts that may be used for billing for this EpisodeOfCare."
* account ^comment = "The billing system may choose to allocate billable items associated with the EpisodeOfCare to different referenced Accounts based on internal business rules."