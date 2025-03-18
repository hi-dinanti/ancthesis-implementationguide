Profile: ANCTdHistory
Parent: $satusehat-immunization
Id: ANCTdHistory-Not-Done
Title: "Antenatal Care Tetanus Not Administered (Immunization)"
Description: "Describes the event of antenatal care patient not being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* status = #not-done (exactly)
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
* note 0..1 MS // Annotation "Additional immunization notes" "Extra information about the immunization that is not conveyed by the other attributes."
* reasonCode 0..1 //CodeableConcept "Why immunization occurred" 
* reasonCode ^comment = "Reasons why the vaccine was not administered, e.g. due to medical precaution."
* reasonCode from http://hl7.org/fhir/ValueSet/immunization-reason (example)
* reasonCode ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* reasonCode ^binding.extension.valueString = "ImmunizationReason"
* reasonCode ^binding.description = "The reason why a vaccine was not administered."
* reasonCode ^binding.description = "The reason why a vaccine was administered."
* reasonCode.coding.system = "http://terminology.kemkes.go.id/CodeSystem/immunization-reason"
* reasonCode.coding.code = #IM-WUS (exactly)
* reasonCode.coding.display = "Imunisasi Program Rutin Lanjutan Wanita Usia Subur"
* reasonReference 0..1 
* reasonReference only Reference($Condition or $Observation or $DiagnosticReport) 
* reasonReference ^comment = "Condition, Observation or DiagnosticReport that supports why the immunization was administered."
* reportOrigin 0..1 // CodeableConcept 
* reportOrigin from http://hl7.org/fhir/ValueSet/immunization-origin (example)
* reportOrigin ^comment = "Indicates the source of a secondarily reported record. The source of the data when the report of the immunization event is not based on information from the person who administered the vaccine."
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