Resource: Immunization
Id: Immunization
Description: "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* ^meta.lastUpdated = "2025-02-11T05:35:11.8620504+00:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Medications"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pher
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/Immunization"
* ^date = "2021-12-28T11:09:40.0355318Z"
* ^publisher = "Health Level Seven International (Public Health and Emergency Response)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* . ^short = "Immunization event information"
* . ^definition = "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* identifier undefined..undefined Identifier "Business identifier" "A unique identifier assigned to this immunization record."
* status 1..1 ?! MS SU code "completed | entered-in-error | not-done" "Indicates the current status of the immunization event."
* status ^slicing.discriminator.type = #value
* status ^slicing.discriminator.path = "$this"
* status ^slicing.rules = #closed
* status contains 
    completed 0..1 MS and 
    not-done 0..1 MS
* status[completed] = #completed
* status[not-done] = #not-done
* status from http://hl7.org/fhir/ValueSet/immunization-status|4.0.1 (required)
* status ^comment = "Will generally be set to show that the immunization has been completed or not done.  This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid."
* status ^isModifierReason = "This element is labeled as a modifier because it is a status element that contains statuses entered-in-error and not-done which means that the resource should not be treated as valid"
* status ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "ImmunizationStatus"
* status ^binding.description = "A set of codes indicating the current status of an Immunization."
* statusReason undefined..1 CodeableConcept "Reason not done" "Indicates the reason the immunization event was not performed."
* statusReason from http://hl7.org/fhir/ValueSet/immunization-status-reason (example)
* statusReason ^comment = "This is generally only used for the status of \"not-done\". The reason for performing the immunization event is captured in reasonCode, not here."
* statusReason ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* statusReason ^binding.extension.valueString = "ImmunizationStatusReason"
* statusReason ^binding.description = "The reason why a vaccine was not administered."
* vaccineCode 1..1 SU CodeableConcept "Vaccine product administered" "Vaccine that was administered or was to be administered."
* vaccineCode from http://hl7.org/fhir/ValueSet/vaccine-code (example)
* vaccineCode ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode ^binding.extension.valueString = "VaccineCode"
* vaccineCode ^binding.description = "The code for vaccine product administered."
* patient 1..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Patient) "Who was immunized" "The patient who either received or did not receive the immunization."
* encounter undefined..1 Reference(http://hl7.org/fhir/StructureDefinition/Encounter) "Encounter immunization was part of" "The visit or admission or other contact between patient and health care provider the immunization was performed as part of."
* occurrence[x] 1..1 SU dateTime or string "Vaccine administration date" "Date vaccine administered or was to be administered."
* occurrence[x] ^comment = "When immunizations are given a specific date and time should always be known.   When immunizations are patient reported, a specific date might not be known.  Although partial dates are allowed, an adult patient might not be able to recall the year a childhood immunization was given. An exact date is always preferable, but the use of the String data type is acceptable when an exact date is not known. A small number of vaccines (e.g. live oral typhoid vaccine) are given as a series of patient self-administered dose over a span of time. In cases like this, often, only the first dose (typically a provider supervised dose) is recorded with the occurrence indicating the date/time of the first dose."
* recorded undefined..1 dateTime "When the immunization was first captured in the subject's record" "The date the occurrence of the immunization was first captured in the record - potentially significantly after the occurrence of the event."
* recorded ^isSummary = false
* primarySource undefined..1 SU boolean "Indicates context the data was recorded in" "An indication that the content of the record is based on information from the person who administered the vaccine. This reflects the context under which the data was originally recorded."
* primarySource ^comment = "Reflects the “reliability” of the content."
* reportOrigin undefined..1 CodeableConcept "Indicates the source of a secondarily reported record" "The source of the data when the report of the immunization event is not based on information from the person who administered the vaccine."
* reportOrigin from http://hl7.org/fhir/ValueSet/immunization-origin (example)
* reportOrigin ^comment = "Should not be populated if primarySource = True, not required even if primarySource = False."
* reportOrigin.coding ^slicing.discriminator.type = #pattern
* reportOrigin.coding ^slicing.discriminator.path = "code"
* reportOrigin.coding ^slicing.rules = #closed
* reportOrigin.coding contains 
    recall 1..1 MS and 
    record 1..1 MS

* reportOrigin.coding[recall].system = "http://terminology.hl7.org/CodeSystem/immunization-origin"
* reportOrigin.coding[recall].code = #recall
* reportOrigin.coding[recall].display = "Parent/Guardian/Patient Recall"

* reportOrigin.coding[record].system = "http://terminology.hl7.org/CodeSystem/immunization-origin"
* reportOrigin.coding[record].code = #record
* reportOrigin.coding[record].display = "Written Record"
* reportOrigin ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* reportOrigin ^binding.extension.valueString = "ImmunizationReportOrigin"
* reportOrigin ^binding.description = "The source of the data for a record which is not from a primary source."

* location undefined..1 Reference(http://hl7.org/fhir/StructureDefinition/Location) "Where immunization occurred" "The service delivery location where the vaccine administration occurred."
* manufacturer undefined..1 Reference(http://hl7.org/fhir/StructureDefinition/Organization) "Vaccine manufacturer" "Name of vaccine manufacturer."
* lotNumber undefined..1 string "Vaccine lot number" "Lot number of the  vaccine product."
* expirationDate undefined..1 date "Vaccine expiration date" "Date vaccine batch expires."
* site undefined..1 CodeableConcept "Body site vaccine  was administered" "Body site where vaccine was administered."
* site from http://hl7.org/fhir/ValueSet/immunization-site (example)
* site ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* site ^binding.extension.valueString = "ImmunizationSite"
* site ^binding.description = "The site at which the vaccine was administered."
* route undefined..1 CodeableConcept "How vaccine entered body" "The path by which the vaccine product is taken into the body."
* route from http://hl7.org/fhir/ValueSet/immunization-route (example)
* route ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* route ^binding.extension.valueString = "ImmunizationRoute"
* route ^binding.description = "The route by which the vaccine was administered."
* doseQuantity undefined..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Amount of vaccine administered" "The quantity of vaccine product that was administered."
* performer undefined..undefined SU BackboneElement "Who performed event" "Indicates who performed the immunization event."
* performer.function undefined..1 SU CodeableConcept "What type of performance was done" "Describes the type of performance (e.g. ordering provider, administering provider, etc.)."
* performer.function from http://hl7.org/fhir/ValueSet/immunization-function (extensible)
* performer.function ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* performer.function ^binding.extension.valueString = "ImmunizationFunction"
* performer.function ^binding.description = "The role a practitioner or organization plays in the immunization event."
* performer.actor 1..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Organization) "Individual or organization who was performing" "The practitioner or organization who performed the action."
* performer.actor ^comment = "When the individual practitioner who performed the action is known, it is best to send."
* note undefined..undefined SU Annotation "Additional immunization notes" "Extra information about the immunization that is not conveyed by the other attributes."
* reasonCode undefined..undefined CodeableConcept "Why immunization occurred" "Reasons why the vaccine was administered."
* reasonCode from http://hl7.org/fhir/ValueSet/immunization-reason (example)
* reasonCode ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* reasonCode ^binding.extension.valueString = "ImmunizationReason"
* reasonCode ^binding.description = "The reason why a vaccine was administered."

* reasonCode.coding ^slicing.discriminator.type = #pattern
* reasonCode.coding ^slicing.discriminator.path = "code"
* reasonCode.coding ^slicing.rules = #closed
* reasonCode.coding contains 
    IM-WUS 1..1 MS

* reasonCode.coding[IM-WUS].system = "http://terminology.kemkes.go.id/CodeSystem/immunization-reason"
* reasonCode.coding[IM-WUS].code = #IM-WUS
* reasonCode.coding[IM-WUS].display = "Imunisasi Program Rutin Lanjutan Wanita Usia Subur"

* reasonReference undefined..undefined Reference(http://hl7.org/fhir/StructureDefinition/Condition or http://hl7.org/fhir/StructureDefinition/Observation or http://hl7.org/fhir/StructureDefinition/DiagnosticReport) "Why immunization occurred" "Condition, Observation or DiagnosticReport that supports why the immunization was administered."
* isSubpotent undefined..1 ?! SU boolean "Dose potency" "Indication if a dose is considered to be subpotent. By default, a dose should be considered to be potent."
* isSubpotent ^comment = "Typically, the recognition of the dose being sub-potent is retrospective, after the administration (ex. notification of a manufacturer recall after administration). However, in the case of a partial administration (the patient moves unexpectedly and only some of the dose is actually administered), subpotency may be recognized immediately, but it is still important to record the event."
* isSubpotent ^meaningWhenMissing = "By default, a dose should be considered to be potent."
* isSubpotent ^isModifierReason = "This element is labeled as a modifier because an immunization event with a subpotent vaccine doesn't protect the patient the same way as a potent dose."
* subpotentReason undefined..undefined CodeableConcept "Reason for being subpotent" "Reason why a dose is considered to be subpotent."
* subpotentReason from http://hl7.org/fhir/ValueSet/immunization-subpotent-reason (example)
* subpotentReason ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* subpotentReason ^binding.extension.valueString = "SubpotentReason"
* subpotentReason ^binding.description = "The reason why a dose is considered to be subpotent."
* education undefined..undefined BackboneElement "Educational material presented to patient" "Educational material presented to the patient (or guardian) at the time of vaccine administration."
* education obeys imm-1
* education.documentType undefined..1 string "Educational material document identifier" "Identifier of the material presented to the patient."
* education.reference undefined..1 uri "Educational material reference pointer" "Reference pointer to the educational material given to the patient if the information was on line."
* education.publicationDate undefined..1 dateTime "Educational material publication date" "Date the educational material was published."
* education.presentationDate undefined..1 dateTime "Educational material presentation date" "Date the educational material was given to the patient."
* programEligibility undefined..undefined CodeableConcept "Patient eligibility for a vaccination program" "Indicates a patient's eligibility for a funding program."
* programEligibility from http://hl7.org/fhir/ValueSet/immunization-program-eligibility (example)
* programEligibility ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* programEligibility ^binding.extension.valueString = "ProgramEligibility"
* programEligibility ^binding.description = "The patient's eligibility for a vaccation program."
* fundingSource undefined..1 CodeableConcept "Funding source for the vaccine" "Indicates the source of the vaccine actually administered. This may be different than the patient eligibility (e.g. the patient may be eligible for a publically purchased vaccine but due to inventory issues, vaccine purchased with private funds was actually administered)."
* fundingSource from http://hl7.org/fhir/ValueSet/immunization-funding-source (example)
* fundingSource ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* fundingSource ^binding.extension.valueString = "FundingSource"
* fundingSource ^binding.description = "The source of funding used to purchase the vaccine administered."
* reaction undefined..undefined BackboneElement "Details of a reaction that follows immunization" "Categorical data indicating that an adverse event is associated in time to an immunization."
* reaction ^comment = "A reaction may be an indication of an allergy or intolerance and, if this is determined to be the case, it should be recorded as a new AllergyIntolerance resource instance as most systems will not query against past Immunization.reaction elements."
* reaction.date undefined..1 dateTime "When reaction started" "Date of reaction to the immunization."
* reaction.detail undefined..1 Reference(http://hl7.org/fhir/StructureDefinition/Observation) "Additional information on reaction" "Details of the reaction."
* reaction.reported undefined..1 boolean "Indicates self-reported reaction" "Self-reported indicator."
* protocolApplied undefined..undefined BackboneElement "Protocol followed by the provider" "The protocol (set of recommendations) being followed by the provider who administered the dose."
* protocolApplied.series undefined..1 string "Name of vaccine series" "One possible path to achieve presumed immunity against a disease - within the context of an authority."
* protocolApplied.authority undefined..1 Reference(http://hl7.org/fhir/StructureDefinition/Organization) "Who is responsible for publishing the recommendations" "Indicates the authority who published the protocol (e.g. ACIP) that is being followed."
* protocolApplied.targetDisease undefined..undefined CodeableConcept "Vaccine preventatable disease being targetted" "The vaccine preventable disease the dose is being administered against."
* protocolApplied.targetDisease from http://hl7.org/fhir/ValueSet/immunization-target-disease (example)
* protocolApplied.targetDisease ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* protocolApplied.targetDisease ^binding.extension.valueString = "TargetDisease"
* protocolApplied.targetDisease ^binding.description = "The vaccine preventable disease the dose is being administered for."
* protocolApplied.doseNumber[x] 1..1 positiveInt or string "Dose number within series" "Nominal position in a series."

* protocolApplied.doseNumber[x] ^slicing.discriminator.type = #value
* protocolApplied.doseNumber[x] ^slicing.discriminator.path = "$this"
* protocolApplied.doseNumber[x] ^slicing.rules = #closed
* protocolApplied.doseNumber[x] contains 
    T1 1..1 MS and 
    T2 1..1 MS and 
    T3 1..1 MS and 
    T4 1..1 MS and 
    T5 1..1 MS

* protocolApplied.doseNumber[x][T1] = 1
* protocolApplied.doseNumber[x][T2] = 2
* protocolApplied.doseNumber[x][T3] = 3
* protocolApplied.doseNumber[x][T4] = 4
* protocolApplied.doseNumber[x][T5] = 5
* protocolApplied.seriesDoses[x] undefined..1 positiveInt or string "Recommended number of doses for immunity" "The recommended number of doses to achieve immunity."
* protocolApplied.seriesDoses[x] ^comment = "The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose)."