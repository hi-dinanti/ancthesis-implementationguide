Resource: Encounter
Profile: Encounter-ANC
Parent: Encounter
Id: encounter-anc
Title: "Antenatal Care Encounter"
Description: "An interaction between a pregnant individual and a healthcare provider for the purpose of conducting antenatal assessments, providing maternal and fetal health services, and ensuring continuity of care throughout pregnancy. This includes routine check-ups, screenings, interventions, and counseling as part of comprehensive antenatal care."
* ^meta.lastUpdated = "2025-02-11T06:32:01.879599+00:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Management"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/Encounter"
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "Health Level Seven International (Patient Administration)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pafm/index.cfm"
* ^type = "Encounter"
* . ^short = "An interaction during which services are provided to the patient"
* . ^definition = "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."
* . ^alias[0] = "Visit"
* identifier 1..1 MS SU Identifier "Identifier(s) by which this encounter is known" "Identifier(s) by which this encounter is known. The transmission of ANC visit data through the Encounter.identifier element is carried out for each ANC/pregnancy visit by providing information on whether the visit falls into the category of K1 akses, K1 murni, K2 visit, and so on."
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "value"
* identifier ^slicing.rules = #open

* identifier contains 
    K1A 0..1 MS or 
    K1M 0..1 MS or 
    K2 0..1 MS or 
    K3 0..1 MS or 
    K4 0..1 MS or 
    K5 0..1 MS or 
    K6 0..1 MS

* identifier[K1A].system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K1A].value = "K1A"
* identifier[K1A].value ^comment = "K1A Kunjungan K1 akses"

* identifier[K1M].system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K1M].value = "K1M"
* identifier[K1M].value ^comment = "K1M Kunjungan K1 murni"

* identifier[K2].system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K2].value = "K2"
* identifier[K2].value ^comment = "K2 Kunjungan K2"

* identifier[K3].system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K3].value = "K3"
* identifier[K3].value ^comment = "K3 Kunjungan K3"

* identifier[K4].system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K4].value = "K4"
* identifier[K4].value ^comment = "K4 Kunjungan K4"

* identifier[K5].system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K5].value = "K5"
* identifier[K5].value ^comment = "K5 Kunjungan K5"

* identifier[K6].system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K6].value = "K6"
* identifier[K6].value ^comment = "K6 Kunjungan K6"

* identifier.value ^requirements = "To track the patient antenatal care visit in accordance with national regulation."
* status 1..1 ?! SU code "planned | arrived | triaged | in-progress | onleave | finished | cancelled +" "planned | arrived | triaged | in-progress | onleave | finished | cancelled +."
* status from http://hl7.org/fhir/ValueSet/encounter-status|4.0.1 (required)
* status ^comment = "Note that internal business rules will determine the appropriate transitions that may occur between statuses (and also classes)."
* status ^isModifierReason = "This element is labeled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension[=].valueString = "EncounterStatus"
* status ^binding.description = "Current state of the encounter."
* statusHistory undefined..undefined BackboneElement "List of past encounter statuses" "The status history permits the encounter resource to contain the status history without needing to read through the historical versions of the resource, or even have the server store them."
* statusHistory ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* statusHistory ^extension[=].valueString = "StatusHistory"
* statusHistory ^comment = "The current status is always found in the current version of the resource, not the status history."
* statusHistory.status 1..1 code "planned | arrived | triaged | in-progress | onleave | finished | cancelled +" "planned | arrived | triaged | in-progress | onleave | finished | cancelled +."
* statusHistory.status from http://hl7.org/fhir/ValueSet/encounter-status|4.0.1 (required)
* statusHistory.status ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* statusHistory.status ^binding.extension[=].valueString = "EncounterStatus"
* statusHistory.status ^binding.description = "Current state of the encounter."
* statusHistory.period 1..1 Period "The time that the episode was in the specified status" "The time that the episode was in the specified status."
* class 1..1 SU Coding "Classification of patient encounter" "Concepts representing classification of patient encounter such as ambulatory (outpatient), inpatient, emergency, home health or others due to local variations."
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (extensible)
* class ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* class ^binding.extension[=].valueString = "EncounterClass"
* class ^binding.description = "Classification of the encounter."
* classHistory undefined..undefined BackboneElement "List of past encounter classes" "The class history permits the tracking of the encounters transitions without needing to go  through the resource history.  This would be used for a case where an admission starts of as an emergency encounter, then transitions into an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow the patient and not require re-processing and not get lost or cancelled during a kind of discharge from emergency to inpatient."
* classHistory ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* classHistory ^extension[=].valueString = "ClassHistory"
* classHistory.class 1..1 Coding "inpatient | outpatient | ambulatory | emergency +" "inpatient | outpatient | ambulatory | emergency +."
* classHistory.class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (extensible)
* classHistory.class ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* classHistory.class ^binding.extension[=].valueString = "EncounterClass"
* classHistory.class ^binding.description = "Classification of the encounter."
* classHistory.period 1..1 Period "The time that the episode was in the specified class" "The time that the episode was in the specified class."
* type undefined..undefined SU CodeableConcept "Specific type of encounter" "Specific type of encounter (e.g. e-mail consultation, surgical day-care, skilled nursing, rehabilitation)."
* type from http://hl7.org/fhir/ValueSet/encounter-type (example)
* type ^comment = "Since there are many ways to further classify encounters, this element is 0..*."
* type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension[=].valueString = "EncounterType"
* type ^binding.description = "The type of encounter."
* serviceType undefined..1 SU CodeableConcept "Specific type of service" "Broad categorization of the service that is to be provided (e.g. cardiology)."
* serviceType from http://hl7.org/fhir/ValueSet/service-type (example)
* serviceType ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* serviceType ^binding.extension[=].valueString = "EncounterServiceType"
* serviceType ^binding.description = "Broad categorization of the service that is to be provided."
* priority undefined..1 CodeableConcept "Indicates the urgency of the encounter" "Indicates the urgency of the encounter."
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (example)
* priority ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* priority ^binding.extension[=].valueString = "Priority"
* priority ^binding.description = "Indicates the urgency of the encounter."
* subject undefined..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group) "The patient or group present at the encounter" "The patient or group present at the encounter."
* subject ^comment = "While the encounter is always about the patient, the patient might not actually be known in all contexts of use, and there may be a group of patients that could be anonymous (such as in a group therapy for Alcoholics Anonymous - where the recording of the encounter could be used for billing on the number of people/staff and not important to the context of the specific patients) or alternately in veterinary care a herd of sheep receiving treatment (where the animals are not individually tracked)."
* subject ^alias[0] = "patient"
* episodeOfCare undefined..undefined SU Reference(http://hl7.org/fhir/StructureDefinition/EpisodeOfCare) "Episode(s) of care that this encounter should be recorded against" "Where a specific encounter should be classified as a part of a specific episode(s) of care this field should be used. This association can facilitate grouping of related encounters together for a specific purpose, such as government reporting, issue tracking, association via a common problem.  The association is recorded on the encounter as these are typically created after the episode of care and grouped on entry rather than editing the episode of care to append another encounter to it (the episode of care could span years)."
* basedOn undefined..undefined Reference(http://hl7.org/fhir/StructureDefinition/ServiceRequest) "The ServiceRequest that initiated this encounter" "The request this encounter satisfies (e.g. incoming referral or procedure request)."
* basedOn ^alias[0] = "incomingReferral"
* participant undefined..undefined SU BackboneElement "List of participants involved in the encounter" "The list of people responsible for providing the service."
* participant.type undefined..undefined SU CodeableConcept "Role of participant in encounter" "Role of participant in encounter."
* participant.type from http://hl7.org/fhir/ValueSet/encounter-participant-type (extensible)
* participant.type ^comment = "The participant type indicates how an individual participates in an encounter. It includes non-practitioner participants, and for practitioners this is to describe the action type in the context of this encounter (e.g. Admitting Dr, Attending Dr, Translator, Consulting Dr). This is different to the practitioner roles which are functional roles, derived from terms of employment, education, licensing, etc."
* participant.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* participant.type ^binding.extension[=].valueString = "ParticipantType"
* participant.type ^binding.description = "Role of participant in encounter."
* participant.period undefined..1 Period "Period of time during the encounter that the participant participated" "The period of time that the specified participant participated in the encounter. These can overlap or be sub-sets of the overall encounter's period."
* participant.individual undefined..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/RelatedPerson) "Persons involved in the encounter other than the patient" "Persons involved in the encounter other than the patient."
* appointment undefined..undefined SU Reference(http://hl7.org/fhir/StructureDefinition/Appointment) "The appointment that scheduled this encounter" "The appointment that scheduled this encounter."
* period undefined..1 Period "The start and end time of the encounter" "The start and end time of the encounter."
* period ^comment = "If not (yet) known, the end of the Period may be omitted."
* length undefined..1 Duration "Quantity of time the encounter lasted (less time absent)" "Quantity of time the encounter lasted. This excludes the time during leaves of absence."
* length ^comment = "May differ from the time the Encounter.period lasted because of leave of absence."
* reasonCode undefined..undefined SU CodeableConcept "Coded reason the encounter takes place" "Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis."
* reasonCode from http://hl7.org/fhir/ValueSet/encounter-reason (preferred)
* reasonCode ^comment = "For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis)."
* reasonCode ^alias[0] = "Indication"
* reasonCode ^alias[+] = "Admission diagnosis"
* reasonCode ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* reasonCode ^binding.extension[=].valueString = "EncounterReason"
* reasonCode ^binding.description = "Reason why the encounter takes place."
* reasonReference undefined..undefined SU Reference(http://hl7.org/fhir/StructureDefinition/Condition or http://hl7.org/fhir/StructureDefinition/Procedure or http://hl7.org/fhir/StructureDefinition/Observation or http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation) "Reason the encounter takes place (reference)" "Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis."
* reasonReference ^comment = "For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis)."
* reasonReference ^alias[0] = "Indication"
* reasonReference ^alias[+] = "Admission diagnosis"
* diagnosis undefined..undefined SU BackboneElement "The list of diagnosis relevant to this encounter" "The list of diagnosis relevant to this encounter."
* diagnosis ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* diagnosis ^extension[=].valueString = "Diagnosis"
* diagnosis.condition 1..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Condition or http://hl7.org/fhir/StructureDefinition/Procedure) "The diagnosis or procedure relevant to the encounter" "Reason the encounter takes place, as specified using information from another resource. For admissions, this is the admission diagnosis. The indication will typically be a Condition (with other resources referenced in the evidence.detail), or a Procedure."
* diagnosis.condition ^comment = "For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis)."
* diagnosis.condition ^alias[0] = "Admission diagnosis"
* diagnosis.condition ^alias[+] = "discharge diagnosis"
* diagnosis.condition ^alias[+] = "indication"
* diagnosis.use undefined..1 CodeableConcept "Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)" "Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)."
* diagnosis.use from http://hl7.org/fhir/ValueSet/diagnosis-role (preferred)
* diagnosis.use ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* diagnosis.use ^binding.extension[=].valueString = "DiagnosisRole"
* diagnosis.use ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* diagnosis.use ^binding.extension[=].valueBoolean = true
* diagnosis.use ^binding.description = "The type of diagnosis this condition represents."
* diagnosis.rank undefined..1 positiveInt "Ranking of the diagnosis (for each role type)" "Ranking of the diagnosis (for each role type)."
* account undefined..undefined Reference(http://hl7.org/fhir/StructureDefinition/Account) "The set of accounts that may be used for billing for this Encounter" "The set of accounts that may be used for billing for this Encounter."
* account ^comment = "The billing system may choose to allocate billable items associated with the Encounter to different referenced Accounts based on internal business rules."
* hospitalization undefined..1 BackboneElement "Details about the admission to a healthcare service" "Details about the admission to a healthcare service."
* hospitalization ^comment = "An Encounter may cover more than just the inpatient stay. Contexts such as outpatients, community clinics, and aged care facilities are also included.\r\rThe duration recorded in the period of this encounter covers the entire scope of this hospitalization record."
* hospitalization.preAdmissionIdentifier undefined..1 Identifier "Pre-admission identifier" "Pre-admission identifier."
* hospitalization.origin undefined..1 Reference(http://hl7.org/fhir/StructureDefinition/Location or http://hl7.org/fhir/StructureDefinition/Organization) "The location/organization from which the patient came before admission" "The location/organization from which the patient came before admission."
* hospitalization.admitSource undefined..1 CodeableConcept "From where patient was admitted (physician referral, transfer)" "From where patient was admitted (physician referral, transfer)."
* hospitalization.admitSource from http://hl7.org/fhir/ValueSet/encounter-admit-source (preferred)
* hospitalization.admitSource ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* hospitalization.admitSource ^binding.extension[=].valueString = "AdmitSource"
* hospitalization.admitSource ^binding.description = "From where the patient was admitted."
* hospitalization.reAdmission undefined..1 CodeableConcept "The type of hospital re-admission that has occurred (if any). If the value is absent, then this is not identified as a readmission" "Whether this hospitalization is a readmission and why if known."
* hospitalization.reAdmission from http://terminology.hl7.org/ValueSet/v2-0092 (example)
* hospitalization.reAdmission ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* hospitalization.reAdmission ^binding.extension[=].valueString = "ReAdmissionType"
* hospitalization.reAdmission ^binding.description = "The reason for re-admission of this hospitalization encounter."
* hospitalization.dietPreference undefined..undefined CodeableConcept "Diet preferences reported by the patient" "Diet preferences reported by the patient."
* hospitalization.dietPreference from http://hl7.org/fhir/ValueSet/encounter-diet (example)
* hospitalization.dietPreference ^comment = "For example, a patient may request both a dairy-free and nut-free diet preference (not mutually exclusive)."
* hospitalization.dietPreference ^requirements = "Used to track patient's diet restrictions and/or preference. For a complete description of the nutrition needs of a patient during their stay, one should use the nutritionOrder resource which links to Encounter."
* hospitalization.dietPreference ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* hospitalization.dietPreference ^binding.extension[=].valueString = "PatientDiet"
* hospitalization.dietPreference ^binding.description = "Medical, cultural or ethical food preferences to help with catering requirements."
* hospitalization.specialCourtesy undefined..undefined CodeableConcept "Special courtesies (VIP, board member)" "Special courtesies (VIP, board member)."
* hospitalization.specialCourtesy from http://hl7.org/fhir/ValueSet/encounter-special-courtesy (preferred)
* hospitalization.specialCourtesy ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* hospitalization.specialCourtesy ^binding.extension[=].valueString = "Courtesies"
* hospitalization.specialCourtesy ^binding.description = "Special courtesies."
* hospitalization.specialArrangement undefined..undefined CodeableConcept "Wheelchair, translator, stretcher, etc." "Any special requests that have been made for this hospitalization encounter, such as the provision of specific equipment or other things."
* hospitalization.specialArrangement from http://hl7.org/fhir/ValueSet/encounter-special-arrangements (preferred)
* hospitalization.specialArrangement ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* hospitalization.specialArrangement ^binding.extension[=].valueString = "Arrangements"
* hospitalization.specialArrangement ^binding.description = "Special arrangements."
* hospitalization.destination undefined..1 Reference(http://hl7.org/fhir/StructureDefinition/Location or http://hl7.org/fhir/StructureDefinition/Organization) "Location/organization to which the patient is discharged" "Location/organization to which the patient is discharged."
* hospitalization.dischargeDisposition undefined..1 CodeableConcept "Category or kind of location after discharge" "Category or kind of location after discharge."
* hospitalization.dischargeDisposition from http://hl7.org/fhir/ValueSet/encounter-discharge-disposition (example)
* hospitalization.dischargeDisposition ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* hospitalization.dischargeDisposition ^binding.extension[=].valueString = "DischargeDisp"
* hospitalization.dischargeDisposition ^binding.description = "Discharge Disposition."
* location undefined..undefined BackboneElement "List of locations where the patient has been" "List of locations where  the patient has been during this encounter."
* location ^comment = "Virtual encounters can be recorded in the Encounter by specifying a location reference to a location of type \"kind\" such as \"client's home\" and an encounter.class = \"virtual\"."
* location.location 1..1 Reference(http://hl7.org/fhir/StructureDefinition/Location) "Location the encounter takes place" "The location where the encounter takes place."
* location.status undefined..1 code "planned | active | reserved | completed" "The status of the participants' presence at the specified location during the period specified. If the participant is no longer at the location, then the period will have an end date/time."
* location.status from http://hl7.org/fhir/ValueSet/encounter-location-status|4.0.1 (required)
* location.status ^comment = "When the patient is no longer active at a location, then the period end date is entered, and the status may be changed to completed."
* location.status ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* location.status ^binding.extension[=].valueString = "EncounterLocationStatus"
* location.status ^binding.description = "The status of the location."
* location.physicalType undefined..1 CodeableConcept "The physical type of the location (usually the level in the location hierachy - bed room ward etc.)" "This will be used to specify the required levels (bed/ward/room/etc.) desired to be recorded to simplify either messaging or query."
* location.physicalType from http://hl7.org/fhir/ValueSet/location-physical-type (example)
* location.physicalType ^comment = "This information is de-normalized from the Location resource to support the easier understanding of the encounter resource and processing in messaging or query.\n\nThere may be many levels in the hierachy, and this may only pic specific levels that are required for a specific usage scenario."
* location.physicalType ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* location.physicalType ^binding.extension[=].valueString = "PhysicalType"
* location.physicalType ^binding.description = "Physical form of the location."
* location.period undefined..1 Period "Time period during which the patient was present at the location" "Time period during which the patient was present at the location."
* serviceProvider undefined..1 Reference(http://hl7.org/fhir/StructureDefinition/Organization) "The organization (facility) responsible for this encounter" "The organization that is primarily responsible for this Encounter's services. This MAY be the same as the organization on the Patient record, however it could be different, such as if the actor performing the services was from an external organization (which may be billed seperately) for an external consultation.  Refer to the example bundle showing an abbreviated set of Encounters for a colonoscopy."
* partOf undefined..1 Reference(http://hl7.org/fhir/StructureDefinition/Encounter) "Another Encounter this encounter is part of" "Another Encounter of which this encounter is a part of (administratively or in time)."
* partOf ^comment = "This is also used for associating a child's encounter back to the mother's encounter.\r\rRefer to the Notes section in the Patient resource for further details."
* partOf ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
* partOf ^type.extension.valueBoolean = true