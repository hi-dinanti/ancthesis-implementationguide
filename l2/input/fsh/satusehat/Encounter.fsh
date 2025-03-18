Profile: Encounter
Parent: $Encounter
Id: Encounter
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/Encounter"
// * ^meta.lastUpdated = "06/13/2023 10:38:19"
// * ^date = "10/18/2023 15:19:06"
* ^publisher = "Health Level Seven International (Patient Administration)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pafm/index.cfm"
* . ^short = "An interaction during which services are provided to the patient"
* . ^definition = "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."
* . ^alias[0] = "Visit"
* identifier 1..* SU // Identifier "Identifier(s) by which this encounter is known" "Identifier(s) by which this encounter is known."
* identifier ^short = "Identifier(s) by which this encounter is known"
* identifier ^definition = "Identifier(s) by which this encounter is known."
* status 1..1 ?! SU // code "planned | arrived | triaged | in-progress | onleave | finished | cancelled +" "planned | arrived | triaged | in-progress | onleave | finished | cancelled +."
* status ^short = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +"
* status ^definition = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +."
* status from http://hl7.org/fhir/ValueSet/encounter-status|4.0.1 (required)
* status ^comment = "Note that internal business rules will determine the appropriate transitions that may occur between statuses (and also classes)."
* status ^isModifierReason = "This element is labeled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension[=].valueString = "EncounterStatus"
* status ^binding.description = "Current state of the encounter."
* statusHistory 1..* // BackboneElement "List of past encounter statuses" "The status history permits the encounter resource to contain the status history without needing to read through the historical versions of the resource, or even have the server store them."
* statusHistory ^short = "List of past encounter statuses"
* statusHistory ^definition = "The status history permits the encounter resource to contain the status history without needing to read through the historical versions of the resource, or even have the server store them."
* statusHistory ^extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-explicit-type-name"
* statusHistory ^extension.valueString = "StatusHistory"
* statusHistory ^comment = "The current status is always found in the current version of the resource, not the status history."
* statusHistory.status 1..1 // code "planned | arrived | triaged | in-progress | onleave | finished | cancelled +" "planned | arrived | triaged | in-progress | onleave | finished | cancelled +."
* statusHistory.status ^short = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +"
* statusHistory.status ^definition = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +."
* statusHistory.status from http://hl7.org/fhir/ValueSet/encounter-status|4.0.1 (required)
* statusHistory.status ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* statusHistory.status ^binding.extension[=].valueString = "EncounterStatus"
* statusHistory.status ^binding.description = "Current state of the encounter."
* statusHistory.period 1..1 // Period "The time that the episode was in the specified status" "The time that the episode was in the specified status."
* statusHistory.period ^short = "The time that the episode was in the specified status"
* statusHistory.period ^definition = "The time that the episode was in the specified status."
* class 1..1 SU // Coding "Classification of patient encounter" "Concepts representing classification of patient encounter such as ambulatory (outpatient), inpatient, emergency, home health or others due to local variations."
* class ^short = "Classification of patient encounter"
* class ^definition = "Concepts representing classification of patient encounter such as ambulatory (outpatient), inpatient, emergency, home health or others due to local variations."
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (extensible)
* class ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* class ^binding.extension[=].valueString = "EncounterClass"
* class ^binding.description = "Classification of the encounter."
* classHistory 0..* // BackboneElement "List of past encounter classes" "The class history permits the tracking of the encounters transitions without needing to go  through the resource history.  This would be used for a case where an admission starts of as an emergency encounter, then transitions into an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow the patient and not require re-processing and not get lost or cancelled during a kind of discharge from emergency to inpatient."
* classHistory ^short = "List of past encounter classes"
* classHistory ^definition = "The class history permits the tracking of the encounters transitions without needing to go  through the resource history.  This would be used for a case where an admission starts of as an emergency encounter, then transitions into an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow the patient and not require re-processing and not get lost or cancelled during a kind of discharge from emergency to inpatient."
* classHistory ^extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-explicit-type-name"
* classHistory ^extension.valueString = "ClassHistory"
* classHistory.class 1..1 // Coding "inpatient | outpatient | ambulatory | emergency +" "inpatient | outpatient | ambulatory | emergency +."
* classHistory.class ^short = "inpatient | outpatient | ambulatory | emergency +"
* classHistory.class ^definition = "inpatient | outpatient | ambulatory | emergency +."
* classHistory.class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (extensible)
* classHistory.class ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* classHistory.class ^binding.extension[=].valueString = "EncounterClass"
* classHistory.class ^binding.description = "Classification of the encounter."
* classHistory.period 1..1 // Period "The time that the episode was in the specified class" "The time that the episode was in the specified class."
* classHistory.period ^short = "The time that the episode was in the specified class"
* classHistory.period ^definition = "The time that the episode was in the specified class."
* type 0..* SU // CodeableConcept "Specific type of encounter" "Specific type of encounter (e.g. e-mail consultation, surgical day-care, skilled nursing, rehabilitation)."
* type ^short = "Specific type of encounter"
* type ^definition = "Specific type of encounter (e.g. e-mail consultation, surgical day-care, skilled nursing, rehabilitation)."
* type from http://hl7.org/fhir/ValueSet/encounter-type (example)
* type ^comment = "Since there are many ways to further classify encounters, this element is 0..*."
* type ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension[=].valueString = "EncounterType"
* type ^binding.description = "The type of encounter."
* serviceType 0..1 SU // CodeableConcept "Specific type of service" "Broad categorization of the service that is to be provided (e.g. cardiology)."
* serviceType ^short = "Specific type of service"
* serviceType ^definition = "Broad categorization of the service that is to be provided (e.g. cardiology)."
* serviceType from http://hl7.org/fhir/ValueSet/service-type (example)
* serviceType ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* serviceType ^binding.extension[=].valueString = "EncounterServiceType"
* serviceType ^binding.description = "Broad categorization of the service that is to be provided."
* priority 0..1 // CodeableConcept "Indicates the urgency of the encounter" "Indicates the urgency of the encounter."
* priority ^short = "Indicates the urgency of the encounter"
* priority ^definition = "Indicates the urgency of the encounter."
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (example)
* priority ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* priority ^binding.extension[=].valueString = "Priority"
* priority ^binding.description = "Indicates the urgency of the encounter."
* subject 1..1 SU // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/Group) "The patient or group present at the encounter" "The patient or group present at the encounter."
* subject ^short = "The patient or group present at the encounter"
* subject ^definition = "The patient or group present at the encounter."
* subject ^comment = "While the encounter is always about the patient, the patient might not actually be known in all contexts of use, and there may be a group of patients that could be anonymous (such as in a group therapy for Alcoholics Anonymous - where the recording of the encounter could be used for billing on the number of people/staff and not important to the context of the specific patients) or alternately in veterinary care a herd of sheep receiving treatment (where the animals are not individually tracked)."
* subject ^alias[0] = "patient"
* episodeOfCare 0..* SU // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/EpisodeOfCare) "Episode(s) of care that this encounter should be recorded against" "Where a specific encounter should be classified as a part of a specific episode(s) of care this field should be used. This association can facilitate grouping of related encounters together for a specific purpose, such as government reporting, issue tracking, association via a common problem.  The association is recorded on the encounter as these are typically created after the episode of care and grouped on entry rather than editing the episode of care to append another encounter to it (the episode of care could span years)."
* episodeOfCare ^short = "Episode(s) of care that this encounter should be recorded against"
* episodeOfCare ^definition = "Where a specific encounter should be classified as a part of a specific episode(s) of care this field should be used. This association can facilitate grouping of related encounters together for a specific purpose, such as government reporting, issue tracking, association via a common problem.  The association is recorded on the encounter as these are typically created after the episode of care and grouped on entry rather than editing the episode of care to append another encounter to it (the episode of care could span years)."
* basedOn 0..* // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/ServiceRequest) "The ServiceRequest that initiated this encounter" "The request this encounter satisfies (e.g. incoming referral or procedure request)."
* basedOn ^short = "The ServiceRequest that initiated this encounter"
* basedOn ^definition = "The request this encounter satisfies (e.g. incoming referral or procedure request)."
* basedOn ^alias[0] = "incomingReferral"
* participant 1..* SU // BackboneElement "List of participants involved in the encounter" "The list of people responsible for providing the service."
* participant ^short = "List of participants involved in the encounter"
* participant ^definition = "The list of people responsible for providing the service."
* participant.type 0..* SU // CodeableConcept "Role of participant in encounter" "Role of participant in encounter."
* participant.type ^short = "Role of participant in encounter"
* participant.type ^definition = "Role of participant in encounter."
* participant.type from http://hl7.org/fhir/ValueSet/encounter-participant-type (extensible)
* participant.type ^comment = "The participant type indicates how an individual participates in an encounter. It includes non-practitioner participants, and for practitioners this is to describe the action type in the context of this encounter (e.g. Admitting Dr, Attending Dr, Translator, Consulting Dr). This is different to the practitioner roles which are functional roles, derived from terms of employment, education, licensing, etc."
* participant.type ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* participant.type ^binding.extension[=].valueString = "ParticipantType"
* participant.type ^binding.description = "Role of participant in encounter."
* participant.period 0..1 // Period "Period of time during the encounter that the participant participated" "The period of time that the specified participant participated in the encounter. These can overlap or be sub-sets of the overall encounter's period."
* participant.period ^short = "Period of time during the encounter that the participant participated"
* participant.period ^definition = "The period of time that the specified participant participated in the encounter. These can overlap or be sub-sets of the overall encounter's period."
* participant.individual 0..1 SU // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole or https://fhir.kemkes.go.id/r4/StructureDefinition/RelatedPerson) "Persons involved in the encounter other than the patient" "Persons involved in the encounter other than the patient."
* participant.individual ^short = "Persons involved in the encounter other than the patient"
* participant.individual ^definition = "Persons involved in the encounter other than the patient."
* appointment 0..* SU // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Appointment) "The appointment that scheduled this encounter" "The appointment that scheduled this encounter."
* appointment ^short = "The appointment that scheduled this encounter"
* appointment ^definition = "The appointment that scheduled this encounter."
* period 1..1 // Period "The start and end time of the encounter" "The start and end time of the encounter."
* period ^short = "The start and end time of the encounter"
* period ^definition = "The start and end time of the encounter."
* period ^comment = "If not (yet) known, the end of the Period may be omitted."
* length 0..1 // Duration "Quantity of time the encounter lasted (less time absent)" "Quantity of time the encounter lasted. This excludes the time during leaves of absence."
* length ^short = "Quantity of time the encounter lasted (less time absent)"
* length ^definition = "Quantity of time the encounter lasted. This excludes the time during leaves of absence."
* length ^comment = "May differ from the time the Encounter.period lasted because of leave of absence."
* reasonCode 0..* SU // CodeableConcept "Coded reason the encounter takes place" "Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis."
* reasonCode ^short = "Coded reason the encounter takes place"
* reasonCode ^definition = "Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis."
* reasonCode from http://hl7.org/fhir/ValueSet/encounter-reason (preferred)
* reasonCode ^comment = "For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis)."
* reasonCode ^alias[0] = "Indication"
* reasonCode ^alias[+] = "Admission diagnosis"
* reasonCode ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* reasonCode ^binding.extension[=].valueString = "EncounterReason"
* reasonCode ^binding.description = "Reason why the encounter takes place."
* reasonReference 0..* SU // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Condition or https://fhir.kemkes.go.id/r4/StructureDefinition/Procedure or https://fhir.kemkes.go.id/r4/StructureDefinition/Observation or https://fhir.kemkes.go.id/r4/StructureDefinition/ImmunizationRecommendation) "Reason the encounter takes place (reference)" "Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis."
* reasonReference ^short = "Reason the encounter takes place (reference)"
* reasonReference ^definition = "Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis."
* reasonReference ^comment = "For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis)."
* reasonReference ^alias[0] = "Indication"
* reasonReference ^alias[+] = "Admission diagnosis"
* diagnosis 0..* SU // BackboneElement "The list of diagnosis relevant to this encounter" "The list of diagnosis relevant to this encounter."
* diagnosis ^short = "The list of diagnosis relevant to this encounter"
* diagnosis ^definition = "The list of diagnosis relevant to this encounter."
* diagnosis ^extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-explicit-type-name"
* diagnosis ^extension.valueString = "Diagnosis"
* diagnosis.condition 1..1 SU // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Condition or https://fhir.kemkes.go.id/r4/StructureDefinition/Procedure) "The diagnosis or procedure relevant to the encounter" "Reason the encounter takes place, as specified using information from another resource. For admissions, this is the admission diagnosis. The indication will typically be a Condition (with other resources referenced in the evidence.detail), or a Procedure."
* diagnosis.condition ^short = "The diagnosis or procedure relevant to the encounter"
* diagnosis.condition ^definition = "Reason the encounter takes place, as specified using information from another resource. For admissions, this is the admission diagnosis. The indication will typically be a Condition (with other resources referenced in the evidence.detail), or a Procedure."
* diagnosis.condition ^comment = "For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis)."
* diagnosis.condition ^alias[0] = "Admission diagnosis"
* diagnosis.condition ^alias[+] = "discharge diagnosis"
* diagnosis.condition ^alias[+] = "indication"
* diagnosis.use 0..1 // CodeableConcept "Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)" "Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)."
* diagnosis.use ^short = "Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)"
* diagnosis.use ^definition = "Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)."
* diagnosis.use from http://hl7.org/fhir/ValueSet/diagnosis-role (preferred)
* diagnosis.use ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* diagnosis.use ^binding.extension[=].valueString = "DiagnosisRole"
* diagnosis.use ^binding.extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-isCommonBinding"
* diagnosis.use ^binding.extension[=].valueBoolean = true
* diagnosis.use ^binding.description = "The type of diagnosis this condition represents."
* diagnosis.rank 0..1 // positiveInt "Ranking of the diagnosis (for each role type)" "Ranking of the diagnosis (for each role type)."
* diagnosis.rank ^short = "Ranking of the diagnosis (for each role type)"
* diagnosis.rank ^definition = "Ranking of the diagnosis (for each role type)."
* account 0..* // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Account) "The set of accounts that may be used for billing for this Encounter" "The set of accounts that may be used for billing for this Encounter."
* account ^short = "The set of accounts that may be used for billing for this Encounter"
* account ^definition = "The set of accounts that may be used for billing for this Encounter."
* account ^comment = "The billing system may choose to allocate billable items associated with the Encounter to different referenced Accounts based on internal business rules."
* hospitalization 0..1 // BackboneElement "Details about the admission to a healthcare service" "Details about the admission to a healthcare service."
* hospitalization ^short = "Details about the admission to a healthcare service"
* hospitalization ^definition = "Details about the admission to a healthcare service."
* hospitalization ^comment = "An Encounter may cover more than just the inpatient stay. Contexts such as outpatients, community clinics, and aged care facilities are also included.\n\nThe duration recorded in the period of this encounter covers the entire scope of this hospitalization record."
* hospitalization.preAdmissionIdentifier 0..1 // Identifier "Pre-admission identifier" "Pre-admission identifier."
* hospitalization.preAdmissionIdentifier ^short = "Pre-admission identifier"
* hospitalization.preAdmissionIdentifier ^definition = "Pre-admission identifier."
* hospitalization.origin 0..1 // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Location or https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "The location/organization from which the patient came before admission" "The location/organization from which the patient came before admission."
* hospitalization.origin ^short = "The location/organization from which the patient came before admission"
* hospitalization.origin ^definition = "The location/organization from which the patient came before admission."
* hospitalization.admitSource 0..1 // CodeableConcept "From where patient was admitted (physician referral, transfer)" "From where patient was admitted (physician referral, transfer)."
* hospitalization.admitSource ^short = "From where patient was admitted (physician referral, transfer)"
* hospitalization.admitSource ^definition = "From where patient was admitted (physician referral, transfer)."
* hospitalization.admitSource from http://hl7.org/fhir/ValueSet/encounter-admit-source (preferred)
* hospitalization.admitSource ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* hospitalization.admitSource ^binding.extension[=].valueString = "AdmitSource"
* hospitalization.admitSource ^binding.description = "From where the patient was admitted."
* hospitalization.reAdmission 0..1 // CodeableConcept "The type of hospital re-admission that has occurred (if any). If the value is absent, then this is not identified as a readmission" "Whether this hospitalization is a readmission and why if known."
* hospitalization.reAdmission ^short = "The type of hospital re-admission that has occurred (if any). If the value is absent, then this is not identified as a readmission"
* hospitalization.reAdmission ^definition = "Whether this hospitalization is a readmission and why if known."
* hospitalization.reAdmission from http://terminology.hl7.org/ValueSet/v2-0092 (example)
* hospitalization.reAdmission ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* hospitalization.reAdmission ^binding.extension[=].valueString = "ReAdmissionType"
* hospitalization.reAdmission ^binding.description = "The reason for re-admission of this hospitalization encounter."
* hospitalization.dietPreference 0..* // CodeableConcept "Diet preferences reported by the patient" "Diet preferences reported by the patient."
* hospitalization.dietPreference ^short = "Diet preferences reported by the patient"
* hospitalization.dietPreference ^definition = "Diet preferences reported by the patient."
* hospitalization.dietPreference from http://hl7.org/fhir/ValueSet/encounter-diet (example)
* hospitalization.dietPreference ^comment = "For example, a patient may request both a dairy-free and nut-free diet preference (not mutually exclusive)."
* hospitalization.dietPreference ^requirements = "Used to track patient's diet restrictions and/or preference. For a complete description of the nutrition needs of a patient during their stay, one should use the nutritionOrder resource which links to Encounter."
* hospitalization.dietPreference ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* hospitalization.dietPreference ^binding.extension[=].valueString = "PatientDiet"
* hospitalization.dietPreference ^binding.description = "Medical, cultural or ethical food preferences to help with catering requirements."
* hospitalization.specialCourtesy 0..* // CodeableConcept "Special courtesies (VIP, board member)" "Special courtesies (VIP, board member)."
* hospitalization.specialCourtesy ^short = "Special courtesies (VIP, board member)"
* hospitalization.specialCourtesy ^definition = "Special courtesies (VIP, board member)."
* hospitalization.specialCourtesy from http://hl7.org/fhir/ValueSet/encounter-special-courtesy (preferred)
* hospitalization.specialCourtesy ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* hospitalization.specialCourtesy ^binding.extension[=].valueString = "Courtesies"
* hospitalization.specialCourtesy ^binding.description = "Special courtesies."
* hospitalization.specialArrangement 0..* // CodeableConcept "Wheelchair, translator, stretcher, etc." "Any special requests that have been made for this hospitalization encounter, such as the provision of specific equipment or other things."
* hospitalization.specialArrangement ^short = "Wheelchair, translator, stretcher, etc."
* hospitalization.specialArrangement ^definition = "Any special requests that have been made for this hospitalization encounter, such as the provision of specific equipment or other things."
* hospitalization.specialArrangement from http://hl7.org/fhir/ValueSet/encounter-special-arrangements (preferred)
* hospitalization.specialArrangement ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* hospitalization.specialArrangement ^binding.extension[=].valueString = "Arrangements"
* hospitalization.specialArrangement ^binding.description = "Special arrangements."
* hospitalization.destination 0..1 // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Location or https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Location/organization to which the patient is discharged" "Location/organization to which the patient is discharged."
* hospitalization.destination ^short = "Location/organization to which the patient is discharged"
* hospitalization.destination ^definition = "Location/organization to which the patient is discharged."
* hospitalization.dischargeDisposition 0..1 // CodeableConcept "Category or kind of location after discharge" "Category or kind of location after discharge."
* hospitalization.dischargeDisposition ^short = "Category or kind of location after discharge"
* hospitalization.dischargeDisposition ^definition = "Category or kind of location after discharge."
* hospitalization.dischargeDisposition from http://hl7.org/fhir/ValueSet/encounter-discharge-disposition (example)
* hospitalization.dischargeDisposition ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* hospitalization.dischargeDisposition ^binding.extension[=].valueString = "DischargeDisp"
* hospitalization.dischargeDisposition ^binding.description = "Discharge Disposition."
* location 1..* // BackboneElement "List of locations where the patient has been" "List of locations where  the patient has been during this encounter."
* location ^short = "List of locations where the patient has been"
* location ^definition = "List of locations where  the patient has been during this encounter."
* location ^comment = "Virtual encounters can be recorded in the Encounter by specifying a location reference to a location of type \"kind\" such as \"client's home\" and an encounter.class = \"virtual\"."
* location.extension 0..*
* location.extension ^slicing.discriminator.type = #value
* location.extension ^slicing.discriminator.path = "url"
* location.extension ^slicing.rules = #open
// * location.extension contains ServiceClass named serviceClass 0..1
// * location.extension[serviceClass] ^type.code = "Extension"
// * location.extension[serviceClass] ^type.profile = "https://fhir.kemkes.go.id/r4/StructureDefinition/ServiceClass"
// * location.extension[serviceClass] ^isModifier = false
* location.location 1..1 // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Location) "Location the encounter takes place" "The location where the encounter takes place."
* location.location ^short = "Location the encounter takes place"
* location.location ^definition = "The location where the encounter takes place."
* location.status 0..1 // code "planned | active | reserved | completed" "The status of the participants' presence at the specified location during the period specified. If the participant is no longer at the location, then the period will have an end date/time."
* location.status ^short = "planned | active | reserved | completed"
* location.status ^definition = "The status of the participants' presence at the specified location during the period specified. If the participant is no longer at the location, then the period will have an end date/time."
* location.status from http://hl7.org/fhir/ValueSet/encounter-location-status|4.0.1 (required)
* location.status ^comment = "When the patient is no longer active at a location, then the period end date is entered, and the status may be changed to completed."
* location.status ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* location.status ^binding.extension[=].valueString = "EncounterLocationStatus"
* location.status ^binding.description = "The status of the location."
* location.physicalType 0..1 // CodeableConcept "The physical type of the location (usually the level in the location hierachy - bed room ward etc.)" "This will be used to specify the required levels (bed/ward/room/etc.) desired to be recorded to simplify either messaging or query."
* location.physicalType ^short = "The physical type of the location (usually the level in the location hierachy - bed room ward etc.)"
* location.physicalType ^definition = "This will be used to specify the required levels (bed/ward/room/etc.) desired to be recorded to simplify either messaging or query."
* location.physicalType from http://hl7.org/fhir/ValueSet/location-physical-type (example)
* location.physicalType ^comment = "This information is de-normalized from the Location resource to support the easier understanding of the encounter resource and processing in messaging or query.\n\nThere may be many levels in the hierachy, and this may only pic specific levels that are required for a specific usage scenario."
* location.physicalType ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* location.physicalType ^binding.extension[=].valueString = "PhysicalType"
* location.physicalType ^binding.description = "Physical form of the location."
* location.period 0..1 // Period "Time period during which the patient was present at the location" "Time period during which the patient was present at the location."
* location.period ^short = "Time period during which the patient was present at the location"
* location.period ^definition = "Time period during which the patient was present at the location."
* serviceProvider 1..1 // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "The organization (facility) responsible for this encounter" "The organization that is primarily responsible for this Encounter's services. This MAY be the same as the organization on the Patient record, however it could be different, such as if the actor performing the services was from an external organization (which may be billed seperately) for an external consultation.  Refer to the example bundle showing an abbreviated set of Encounters for a colonoscopy."
* serviceProvider ^short = "The organization (facility) responsible for this encounter"
* serviceProvider ^definition = "The organization that is primarily responsible for this Encounter's services. This MAY be the same as the organization on the Patient record, however it could be different, such as if the actor performing the services was from an external organization (which may be billed seperately) for an external consultation.  Refer to the example bundle showing an abbreviated set of Encounters for a colonoscopy."
* partOf 0..1 // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Encounter) "Another Encounter this encounter is part of" "Another Encounter of which this encounter is a part of (administratively or in time)."
* partOf ^short = "Another Encounter this encounter is part of"
* partOf ^definition = "Another Encounter of which this encounter is a part of (administratively or in time)."
* partOf ^comment = "This is also used for associating a child's encounter back to the mother's encounter.\n\nRefer to the Notes section in the Patient resource for further details."
* partOf ^type.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-hierarchy"
* partOf ^type.extension.valueBoolean = true