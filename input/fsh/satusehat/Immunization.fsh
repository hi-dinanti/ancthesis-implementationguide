Profile: SatuSehatImmunization
Parent: Immunization
Id: SatuSehatImmunization
Description: "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/Immunization"
// * ^meta.versionId = "2"
// * ^meta.lastUpdated = "2022-10-05T04:54:30.5254547+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Medications"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pher
* ^date = "2023-05-12T03:54:04.8907436+00:00"
* ^publisher = "Health Level Seven International (Public Health and Emergency Response)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* . ^short = "Immunization event information"
* . ^definition = "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* identifier 1..1 // Identifier "Business identifier" "A unique identifier assigned to this immunization record."
* status 1..1 //  code "completed | entered-in-error | not-done" "Indicates the current status of the immunization event."
* status from http://hl7.org/fhir/ValueSet/immunization-status|4.0.1 (required)
* status ^comment = "Will generally be set to show that the immunization has been completed or not done.  This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid."
* status ^isModifierReason = "This element is labeled as a modifier because it is a status element that contains statuses entered-in-error and not-done which means that the resource should not be treated as valid"
* status ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "ImmunizationStatus"
* status ^binding.description = "A set of codes indicating the current status of an Immunization."
* statusReason 0..1 // CodeableConcept "Reason not done" "Indicates the reason the immunization event was not performed."
* statusReason from http://hl7.org/fhir/ValueSet/immunization-status-reason (example)
* statusReason ^comment = "This is generally only used for the status of \"not-done\". The reason for performing the immunization event is captured in reasonCode, not here."
* statusReason ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* statusReason ^binding.extension.valueString = "ImmunizationStatusReason"
* statusReason ^binding.description = "The reason why a vaccine was not administered."
* vaccineCode 1..1 MS //  CodeableConcept "Vaccine product administered" "Vaccine that was administered or was to be administered."
* vaccineCode from http://hl7.org/fhir/ValueSet/vaccine-code (example)
* vaccineCode ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* vaccineCode ^binding.extension.valueString = "VaccineCode"
* vaccineCode ^binding.description = "The code for vaccine product administered."
* patient 1..1 MS 
* patient only Reference(Patient or SatuSehatPatient)
* encounter 0..1 // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Encounter) "Encounter immunization was part of" "The visit or admission or other contact between patient and health care provider the immunization was performed as part of."
* encounter only Reference(Encounter or SatuSehatEncounter)
* occurrence[x] 1..1 MS //  dateTime or string "Vaccine administration date" "Date vaccine administered or was to be administered."
* occurrence[x] ^comment = "When immunizations are given a specific date and time should always be known.   When immunizations are patient reported, a specific date might not be known.  Although partial dates are allowed, an adult patient might not be able to recall the year a childhood immunization was given. An exact date is always preferable, but the use of the String data type is acceptable when an exact date is not known. A small number of vaccines (e.g. live oral typhoid vaccine) are given as a series of patient self-administered dose over a span of time. In cases like this, often, only the first dose (typically a provider supervised dose) is recorded with the occurrence indicating the date/time of the first dose."
* recorded 0..1 // dateTime "When the immunization was first captured in the subject's record" "The date the occurrence of the immunization was first captured in the record - potentially significantly after the occurrence of the event."
* recorded ^isSummary = false
* primarySource 0..1 MS //  boolean "Indicates context the data was recorded in" "An indication that the content of the record is based on information from the person who administered the vaccine. This reflects the context under which the data was originally recorded."
* primarySource ^comment = "Reflects the “reliability” of the content."
* reportOrigin 0..1 // CodeableConcept "Indicates the source of a secondarily reported record" "The source of the data when the report of the immunization event is not based on information from the person who administered the vaccine."
* reportOrigin from http://hl7.org/fhir/ValueSet/immunization-origin (example)
* reportOrigin ^comment = "Should not be populated if primarySource = True, not required even if primarySource = False."
* reportOrigin ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* reportOrigin ^binding.extension.valueString = "ImmunizationReportOrigin"
* reportOrigin ^binding.description = "The source of the data for a record which is not from a primary source."
* location 0..1 
* location only Reference(Location) 
* location ^comment = "Where immunization occurred. The service delivery location where the vaccine administration occurred."
* manufacturer 0..1 // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Vaccine manufacturer" "Name of vaccine manufacturer."
* lotNumber 0..1 // string "Vaccine lot number" "Lot number of the  vaccine product."
* expirationDate 0..1 // date "Vaccine expiration date" "Date vaccine batch expires."
* site 0..1 // CodeableConcept "Body site vaccine  was administered" "Body site where vaccine was administered."
* site from http://hl7.org/fhir/ValueSet/immunization-site (example)
* site ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* site ^binding.extension.valueString = "ImmunizationSite"
* site ^binding.description = "The site at which the vaccine was administered."
* route 0..1 // CodeableConcept "How vaccine entered body" "The path by which the vaccine product is taken into the body."
* route from http://hl7.org/fhir/ValueSet/immunization-route (example)
* route ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* route ^binding.extension.valueString = "ImmunizationRoute"
* route ^binding.description = "The route by which the vaccine was administered."
* doseQuantity 0..1 // https://fhir.kemkes.go.id/r4/StructureDefinition/SimpleQuantity "Amount of vaccine administered" "The quantity of vaccine product that was administered."
* performer 0..1 MS //  BackboneElement "Who performed event" "Indicates who performed the immunization event."
* performer.function 0..1 MS //  CodeableConcept "What type of performance was done" "Describes the type of performance (e.g. ordering provider, administering provider, etc.)."
* performer.function from http://hl7.org/fhir/ValueSet/immunization-function (extensible)
* performer.function ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* performer.function ^binding.extension.valueString = "ImmunizationFunction"
* performer.function ^binding.description = "The role a practitioner or organization plays in the immunization event."
* performer.actor 1..1 MS //  Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole or https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Individual or organization who was performing" "The practitioner or organization who performed the action."
* performer.actor ^comment = "When the individual practitioner who performed the action is known, it is best to send."
* note 0..1 MS //  Annotation "Additional immunization notes" "Extra information about the immunization that is not conveyed by the other attributes."
* reasonCode 0..1 // CodeableConcept "Why immunization occurred" "Reasons why the vaccine was administered."
* reasonCode from http://hl7.org/fhir/ValueSet/immunization-reason (example)
* reasonCode ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* reasonCode ^binding.extension.valueString = "ImmunizationReason"
* reasonCode ^binding.description = "The reason why a vaccine was administered."
* reasonReference 0..1 // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Condition or https://fhir.kemkes.go.id/r4/StructureDefinition/Observation or https://fhir.kemkes.go.id/r4/StructureDefinition/DiagnosticReport) "Why immunization occurred" "Condition, Observation or DiagnosticReport that supports why the immunization was administered."
* isSubpotent 0..1 // ?! MS //  boolean "Dose potency" "Indication if a dose is considered to be subpotent. By default, a dose should be considered to be potent."
* isSubpotent ^comment = "Typically, the recognition of the dose being sub-potent is retrospective, after the administration (ex. notification of a manufacturer recall after administration). However, in the case of a partial administration (the patient moves unexpectedly and only some of the dose is actually administered), subpotency may be recognized immediately, but it is still important to record the event."
* isSubpotent ^meaningWhenMissing = "By default, a dose should be considered to be potent."
* isSubpotent ^isModifierReason = "This element is labeled as a modifier because an immunization event with a subpotent vaccine doesn't protect the patient the same way as a potent dose."
* subpotentReason 0..1 // CodeableConcept "Reason for being subpotent" "Reason why a dose is considered to be subpotent."
* subpotentReason from http://hl7.org/fhir/ValueSet/immunization-subpotent-reason (example)
* subpotentReason ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* subpotentReason ^binding.extension.valueString = "SubpotentReason"
* subpotentReason ^binding.description = "The reason why a dose is considered to be subpotent."
* education 0..1 // BackboneElement "Educational material presented to patient" "Educational material presented to the patient (or guardian) at the time of vaccine administration."
* education.documentType 0..1 // string "Educational material document identifier" "Identifier of the material presented to the patient."
* education.reference 0..1 // uri "Educational material  pointer" "Reference pointer to the educational material given to the patient if the information was on line."
* education.publicationDate 0..1 // dateTime "Educational material publication date" "Date the educational material was published."
* education.presentationDate 0..1 // dateTime "Educational material presentation date" "Date the educational material was given to the patient."
* programEligibility 0..1 // CodeableConcept "Patient eligibility for a vaccination program" "Indicates a patient's eligibility for a funding program."
* programEligibility from http://hl7.org/fhir/ValueSet/immunization-program-eligibility (example)
* programEligibility ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* programEligibility ^binding.extension.valueString = "ProgramEligibility"
* programEligibility ^binding.description = "The patient's eligibility for a vaccation program."
* fundingSource 0..1 // CodeableConcept "Funding source for the vaccine" "Indicates the source of the vaccine actually administered. This may be different than the patient eligibility (e.g. the patient may be eligible for a publically purchased vaccine but due to inventory issues, vaccine purchased with private funds was actually administered)."
* fundingSource from http://hl7.org/fhir/ValueSet/immunization-funding-source (example)
* fundingSource ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* fundingSource ^binding.extension.valueString = "FundingSource"
* fundingSource ^binding.description = "The source of funding used to purchase the vaccine administered."
* reaction 0..1 // BackboneElement "Details of a reaction that follows immunization" "Categorical data indicating that an adverse event is associated in time to an immunization."
* reaction ^comment = "A reaction may be an indication of an allergy or intolerance and, if this is determined to be the case, it should be recorded as a new AllergyIntolerance resource instance as most systems will not query against past Immunization.reaction elements."
* reaction.date 0..1 // dateTime "When reaction started" "Date of reaction to the immunization."
* reaction.detail 0..1 // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Observation) "Additional information on reaction" "Details of the reaction."
* reaction.reported 0..1 // boolean "Indicates self-reported reaction" "Self-reported indicator."
* protocolApplied 0..1 // BackboneElement "Protocol followed by the provider" "The protocol (set of recommendations) being followed by the provider who administered the dose."
* protocolApplied.series 0..1 // string "Name of vaccine series" "One possible path to achieve presumed immunity against a disease - within the context of an authority."
* protocolApplied.authority 0..1 // Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Who is responsible for publishing the recommendations" "Indicates the authority who published the protocol (e.g. ACIP) that is being followed."
* protocolApplied.targetDisease 0..1 // CodeableConcept "Vaccine preventatable disease being targetted" "The vaccine preventable disease the dose is being administered against."
* protocolApplied.targetDisease from http://hl7.org/fhir/ValueSet/immunization-target-disease (example)
* protocolApplied.targetDisease ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* protocolApplied.targetDisease ^binding.extension.valueString = "TargetDisease"
* protocolApplied.targetDisease ^binding.description = "The vaccine preventable disease the dose is being administered for."
* protocolApplied.doseNumber[x] 1..1 // positiveInt or string "Dose number within series" "Nominal position in a series."
* protocolApplied.doseNumber[x] ^comment = "The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose)."
* protocolApplied.seriesDoses[x] 0..1 // positiveInt or string "Recommended number of doses for immunity" "The recommended number of doses to achieve immunity."
* protocolApplied.seriesDoses[x] ^comment = "The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose)."