Profile: ANCTdAdministration
Parent: SatuSehatImmunization
Id: ANCTdAdministration
Title: "Antenatal Care Tetanus Administration (Immunization)"
Description: "Describes the event of antenatal care patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* status = #completed (exactly)
* status from http://hl7.org/fhir/ValueSet/immunization-status|4.0.1 (required)
* status ^comment = "Will generally be set to show that the immunization has been completed or not done.  This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid."
* status ^isModifierReason = "This element is labeled as a modifier because it is a status element that contains statuses entered-in-error and not-done which means that the resource should not be treated as valid"
* status ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "ImmunizationStatus"
* status ^binding.description = "A set of codes indicating the current status of an Immunization."
* vaccineCode 1..1 MS // 
* vaccineCode ^comment = "Vaccine that was administered or was to be administered."
* vaccineCode.coding.system = "http://sys-ids.kemkes.go.id/kfa"
* vaccineCode.coding.code = #VG139 (exactly)
* vaccineCode.coding.code ^comment = "Local code used for tetanus immunization for pregnant women"
* vaccineCode.coding.display = "Td"
* vaccineCode from http://hl7.org/fhir/ValueSet/vaccine-code (example)
* vaccineCode ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode ^binding.extension.valueString = "VaccineCode"
* vaccineCode ^binding.description = "The code for vaccine product administered."
* occurrence[x] 1..1 MS // dateTime or string "Vaccine administration date" "Date vaccine administered or was to be administered."
* occurrence[x] ^comment = "When immunizations are given a specific date and time should always be known.   When immunizations are patient reported, a specific date might not be known.  Although partial dates are allowed, an adult patient might not be able to recall the year a childhood immunization was given. An exact date is always preferable, but the use of the String data type is acceptable when an exact date is not known. A small number of vaccines (e.g. live oral typhoid vaccine) are given as a series of patient self-administered dose over a span of time. In cases like this, often, only the first dose (typically a provider supervised dose) is recorded with the occurrence indicating the date/time of the first dose."
* primarySource 1..1 MS 
* primarySource ^comment = "An indication that the content of the record is based on information from the person who administered the vaccine. This reflects the context under which the data was originally recorded."
* primarySource  = true
* location 1..1 
* location ^comment = "The service delivery location where the vaccine administration occurred."
* lotNumber 1..1 
* lotNumber ^comment = "Lot number of the  vaccine product."
* expirationDate 0..1
* expirationDate ^comment = "Date vaccine batch expires."
* site 1..1  
* site ^comment = "Body site where vaccine was administered."
* site from http://hl7.org/fhir/ValueSet/immunization-site (example)
* site ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* site ^binding.extension.valueString = "ImmunizationSite"
* site ^binding.description = "The site at which the vaccine was administered."
* route 0..1 
* route ^comment = "The path by which the vaccine product is taken into the body."
* route from http://hl7.org/fhir/ValueSet/immunization-route (example)
* route ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* route ^binding.extension.valueString = "ImmunizationRoute"
* route ^binding.description = "The route by which the vaccine was administered."
* doseQuantity 0..1 // http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Amount of vaccine administered" "The quantity of vaccine product that was administered."
* performer 0..1 MS // BackboneElement "Who performed event" "Indicates who performed the immunization event."
* performer.function 0..1 MS // CodeableConcept "What type of performance was done" "Describes the type of performance (e.g. ordering provider, administering provider, etc.)."
* performer.function from http://hl7.org/fhir/ValueSet/immunization-function (extensible)
* performer.function ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* performer.function ^binding.extension.valueString = "ImmunizationFunction"
* performer.function ^binding.description = "The role a practitioner or organization plays in the immunization event."
* performer.actor 1..1 MS // Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Organization) "Individual or organization who was performing" "The practitioner or organization who performed the action."
* performer.actor ^comment = "When the individual practitioner who performed the action is known, it is best to send."
* note 0..1 MS // Annotation "Additional immunization notes" "Extra information about the immunization that is not conveyed by the other attributes."
* reasonCode 0..1 //CodeableConcept "Why immunization occurred" 
* reasonCode ^comment = "Reasons why the vaccine was administered."
* reasonCode from http://hl7.org/fhir/ValueSet/immunization-reason (example)
* reasonCode ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* reasonCode ^binding.extension.valueString = "ImmunizationReason"
* reasonCode ^binding.description = "The reason why a vaccine was administered."
* reasonCode.coding.system = "http://terminology.kemkes.go.id/CodeSystem/immunization-reason"
* reasonCode.coding.code = #IM-WUS (exactly)
* reasonCode.coding.display = "Imunisasi Program Rutin Lanjutan Wanita Usia Subur"
* reasonReference 0..1 
* reasonReference ^comment = "Condition, Observation or DiagnosticReport that supports why the immunization was administered."
* reaction 0..1 // BackboneElement "Details of a reaction that follows immunization" "Categorical data indicating that an adverse event is associated in time to an immunization."
* reaction ^comment = "A reaction may be an indication of an allergy or intolerance and, if this is determined to be the case, it should be recorded as a new AllergyIntolerance resource instance as most systems will not query against past Immunization.reaction elements."
* reaction.date 0..1 
* reaction.date ^comment = "Date of reaction to the immunization."
* reaction.detail 0..1 
* reaction.detail ^comment = "Additional information on reaction" 
* reaction.reported 0..1  
* reaction.reported ^comment = "Self-reported indicator."
* protocolApplied.doseNumber[x] 1..1 // positiveInt or string "Dose number within series" "Nominal position in a series."
* protocolApplied.doseNumber[x] ^comment = "The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose)."
* protocolApplied.doseNumber[x] only positiveInt