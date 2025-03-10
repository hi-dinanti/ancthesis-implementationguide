Resource: Procedure
Id: Procedure
Description: "An action that is or was performed on or for a patient. This can be a physical intervention like an operation, or less invasive like long term services, counseling, or hypnotherapy."
* ^meta.lastUpdated = "2022-10-05T04:55:36.732455+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Summary"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^date = "2023-05-12T04:00:39.3091812+00:00"
* ^publisher = "Health Level Seven International (Patient Care)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/patientcare/index.cfm"
* . ^short = "An action that is being or was performed on a patient"
* . ^definition = "An action that is or was performed on or for a patient. This can be a physical intervention like an operation, or less invasive like long term services, counseling, or hypnotherapy."
* identifier undefined..undefined SU Identifier "External Identifiers for this procedure" "Business identifiers assigned to this procedure by the performer or other systems which remain constant as the resource is updated and is propagated from server to server."
* identifier ^comment = "This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and Person resource instances might share the same social insurance number."
* identifier ^requirements = "Allows identification of the procedure as it is known by various participating systems and in a way that remains consistent across servers."
* instantiatesCanonical undefined..undefined SU Canonical(https://fhir.kemkes.go.id/r4/StructureDefinition/PlanDefinition or https://fhir.kemkes.go.id/r4/StructureDefinition/ActivityDefinition or https://fhir.kemkes.go.id/r4/StructureDefinition/Measure or https://fhir.kemkes.go.id/r4/StructureDefinition/OperationDefinition or https://fhir.kemkes.go.id/r4/StructureDefinition/Questionnaire) "Instantiates FHIR protocol or definition" "The URL pointing to a FHIR-defined protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure."
* instantiatesUri undefined..undefined SU uri "Instantiates external protocol or definition" "The URL pointing to an externally maintained protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure."
* instantiatesUri ^comment = "This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier."
* basedOn undefined..undefined SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/CarePlan or https://fhir.kemkes.go.id/r4/StructureDefinition/ServiceRequest) "A request for this procedure" "A reference to a resource that contains details of the request for this procedure."
* basedOn ^alias[0] = "fulfills"
* partOf undefined..undefined SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Procedure or https://fhir.kemkes.go.id/r4/StructureDefinition/Observation or https://fhir.kemkes.go.id/r4/StructureDefinition/MedicationAdministration) "Part of referenced event" "A larger event of which this particular procedure is a component or step."
* partOf ^comment = "The MedicationAdministration resource has a partOf reference to Procedure, but this is not a circular reference.   For example, the anesthesia MedicationAdministration is part of the surgical Procedure (MedicationAdministration.partOf = Procedure).  For example, the procedure to insert the IV port for an IV medication administration is part of the medication administration (Procedure.partOf = MedicationAdministration)."
* partOf ^alias[0] = "container"
* status 1..1 ?! SU code "preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown" "A code specifying the state of the procedure. Generally, this will be the in-progress or completed state."
* status from http://hl7.org/fhir/ValueSet/event-status|4.0.1 (required)
* status ^comment = "The \"unknown\" code is not to be used to convey other statuses.  The \"unknown\" code should be used when one of the statuses applies, but the authoring system doesn't know the current state of the procedure.\n\nThis element is labeled as a modifier because the status contains codes that mark the resource as not currently valid."
* status ^isModifierReason = "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "ProcedureStatus"
* status ^binding.description = "A code specifying the state of the procedure."
* statusReason undefined..1 SU CodeableConcept "Reason for current status" "Captures the reason for the current state of the procedure."
* statusReason from http://hl7.org/fhir/ValueSet/procedure-not-performed-reason (example)
* statusReason ^comment = "This is generally only used for \"exception\" statuses such as \"not-done\", \"suspended\" or \"aborted\". The reason for performing the event at all is captured in reasonCode, not here."
* statusReason ^alias[0] = "Suspended Reason"
* statusReason ^alias[+] = "Cancelled Reason"
* statusReason ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* statusReason ^binding.extension.valueString = "ProcedureNegationReason"
* statusReason ^binding.description = "A code that identifies the reason a procedure was not performed."
* category undefined..1 SU CodeableConcept "Classification of the procedure" "A code that classifies the procedure for searching, sorting and display purposes (e.g. \"Surgical Procedure\")."
* category from http://hl7.org/fhir/ValueSet/procedure-category (example)
* category ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "ProcedureCategory"
* category ^binding.description = "A code that classifies a procedure for searching, sorting and display purposes."
* code 1..1 SU CodeableConcept "Identification of the procedure" "The specific procedure that is performed. Use text if the exact nature of the procedure cannot be coded (e.g. \"Laparoscopic Appendectomy\")."
* code from http://hl7.org/fhir/ValueSet/procedure-code (example)
* code ^requirements = "0..1 to account for primarily narrative only resources."
* code ^alias[0] = "type"
* code ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ProcedureCode"
* code ^binding.description = "A code to identify a specific procedure ."
* subject 1..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/Group) "Who the procedure was performed on" "The person, animal or group on which the procedure was performed."
* subject ^alias[0] = "patient"
* encounter 1..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Encounter) "Encounter created as part of" "The Encounter during which this Procedure was created or performed or to which the creation of this record is tightly associated."
* encounter ^comment = "This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter."
* performed[x] undefined..1 SU dateTime or Period or string or Age or Range "When the procedure was performed" "Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured."
* performed[x] ^comment = "Age is generally used when the patient reports an age at which the procedure was performed. Range is generally used when the patient reports an age range when the procedure was performed, such as sometime between 20-25 years old.  dateTime supports a range of precision due to some procedures being reported as past procedures that might not have millisecond precision while other procedures performed and documented during the encounter might have more precise UTC timestamps with timezone."
* recorder undefined..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/RelatedPerson or https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole) "Who recorded the procedure" "Individual who recorded the record and takes responsibility for its content."
* asserter undefined..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/RelatedPerson or https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole) "Person who asserts this procedure" "Individual who is making the procedure statement."
* performer undefined..undefined SU BackboneElement "The people who performed the procedure" "Limited to \"real\" people rather than equipment."
* performer.function undefined..1 SU CodeableConcept "Type of performance" "Distinguishes the type of involvement of the performer in the procedure. For example, surgeon, anaesthetist, endoscopist."
* performer.function from http://hl7.org/fhir/ValueSet/performer-role (example)
* performer.function ^requirements = "Allows disambiguation of the types of involvement of different performers."
* performer.function ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* performer.function ^binding.extension.valueString = "ProcedurePerformerRole"
* performer.function ^binding.description = "A code that identifies the role of a performer of the procedure."
* performer.actor 1..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole or https://fhir.kemkes.go.id/r4/StructureDefinition/Organization or https://fhir.kemkes.go.id/r4/StructureDefinition/Patient or https://fhir.kemkes.go.id/r4/StructureDefinition/RelatedPerson or https://fhir.kemkes.go.id/r4/StructureDefinition/Device) "The reference to the practitioner" "The practitioner who was involved in the procedure."
* performer.actor ^requirements = "A reference to Device supports use cases, such as pacemakers."
* performer.onBehalfOf undefined..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Organization the device or practitioner was acting for" "The organization the device or practitioner was acting on behalf of."
* performer.onBehalfOf ^requirements = "Practitioners and Devices can be associated with multiple organizations.  This element indicates which organization they were acting on behalf of when performing the action."
* location undefined..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Location) "Where the procedure happened" "The location where the procedure actually happened.  E.g. a newborn at home, a tracheostomy at a restaurant."
* location ^requirements = "Ties a procedure to where the records are likely kept."
* reasonCode undefined..undefined SU CodeableConcept "Coded reason procedure performed" "The coded reason why the procedure was performed. This may be a coded entity of some type, or may simply be present as text."
* reasonCode from http://hl7.org/fhir/ValueSet/procedure-reason (example)
* reasonCode ^comment = "Use Procedure.reasonCode when a code sufficiently describes the reason.  Use Procedure.reasonReference when referencing a resource, which allows more information to be conveyed, such as onset date. Procedure.reasonCode and Procedure.reasonReference are not meant to be duplicative.  For a single reason, either Procedure.reasonCode or Procedure.reasonReference can be used.  Procedure.reasonCode may be a summary code, or Procedure.reasonReference may be used to reference a very precise definition of the reason using Condition | Observation | Procedure | DiagnosticReport | DocumentReference.  Both Procedure.reasonCode and Procedure.reasonReference can be used if they are describing different reasons for the procedure."
* reasonCode ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* reasonCode ^binding.extension.valueString = "ProcedureReason"
* reasonCode ^binding.description = "A code that identifies the reason a procedure is  required."
* reasonReference undefined..undefined SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Condition or https://fhir.kemkes.go.id/r4/StructureDefinition/Observation or https://fhir.kemkes.go.id/r4/StructureDefinition/Procedure or https://fhir.kemkes.go.id/r4/StructureDefinition/DiagnosticReport or https://fhir.kemkes.go.id/r4/StructureDefinition/DocumentReference) "The justification that the procedure was performed" "The justification of why the procedure was performed."
* reasonReference ^comment = "It is possible for a procedure to be a reason (such as C-Section) for another procedure (such as an epidural). Other examples include endoscopy for dilatation and biopsy (a combination of diagnostic and therapeutic use). \nUse Procedure.reasonCode when a code sufficiently describes the reason.  Use Procedure.reasonReference when referencing a resource, which allows more information to be conveyed, such as onset date. Procedure.reasonCode and Procedure.reasonReference are not meant to be duplicative.  For a single reason, either Procedure.reasonCode or Procedure.reasonReference can be used.  Procedure.reasonCode may be a summary code, or Procedure.reasonReference may be used to reference a very precise definition of the reason using Condition | Observation | Procedure | DiagnosticReport | DocumentReference.  Both Procedure.reasonCode and Procedure.reasonReference can be used if they are describing different reasons for the procedure."
* bodySite undefined..undefined SU CodeableConcept "Target body sites" "Detailed and structured anatomical location information. Multiple locations are allowed - e.g. multiple punch biopsies of a lesion."
* bodySite from http://hl7.org/fhir/ValueSet/body-site (example)
* bodySite ^comment = "If the use case requires attributes from the BodySite resource (e.g. to identify and track separately) then use the standard extension [procedure-targetbodystructure](extension-procedure-targetbodystructure.html)."
* bodySite ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension.valueString = "BodySite"
* bodySite ^binding.description = "Codes describing anatomical locations. May include laterality."
* outcome undefined..1 SU CodeableConcept "The result of procedure" "The outcome of the procedure - did it resolve the reasons for the procedure being performed?"
* outcome from http://hl7.org/fhir/ValueSet/procedure-outcome (example)
* outcome ^comment = "If outcome contains narrative text only, it can be captured using the CodeableConcept.text."
* outcome ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* outcome ^binding.extension.valueString = "ProcedureOutcome"
* outcome ^binding.description = "An outcome of a procedure - whether it was resolved or otherwise."
* report undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/DiagnosticReport or https://fhir.kemkes.go.id/r4/StructureDefinition/DocumentReference or https://fhir.kemkes.go.id/r4/StructureDefinition/Composition) "Any report resulting from the procedure" "This could be a histology result, pathology report, surgical report, etc."
* report ^comment = "There could potentially be multiple reports - e.g. if this was a procedure which took multiple biopsies resulting in a number of anatomical pathology reports."
* complication undefined..undefined CodeableConcept "Complication following the procedure" "Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the notes, which will typically describe the procedure itself rather than any 'post procedure' issues."
* complication from http://hl7.org/fhir/ValueSet/condition-code (example)
* complication ^comment = "If complications are only expressed by the narrative text, they can be captured using the CodeableConcept.text."
* complication ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* complication ^binding.extension.valueString = "ProcedureComplication"
* complication ^binding.description = "Codes describing complications that resulted from a procedure."
* complicationDetail undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Condition) "A condition that is a result of the procedure" "Any complications that occurred during the procedure, or in the immediate post-performance period."
* complicationDetail ^requirements = "This is used to document a condition that is a result of the procedure, not the condition that was the reason for the procedure."
* followUp undefined..undefined CodeableConcept "Instructions for follow up" "If the procedure required specific follow up - e.g. removal of sutures. The follow up may be represented as a simple note or could potentially be more complex, in which case the CarePlan resource can be used."
* followUp from http://hl7.org/fhir/ValueSet/procedure-followup (example)
* followUp ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* followUp ^binding.extension.valueString = "ProcedureFollowUp"
* followUp ^binding.description = "Specific follow up required for a procedure e.g. removal of sutures."
* note undefined..undefined Annotation "Additional information about the procedure" "Any other notes and comments about the procedure."
* focalDevice undefined..undefined BackboneElement "Manipulated, implanted, or removed device" "A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure."
* focalDevice.action undefined..1 CodeableConcept "Kind of change to device" "The kind of change that happened to the device during the procedure."
* focalDevice.action from http://hl7.org/fhir/ValueSet/device-action (preferred)
* focalDevice.action ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* focalDevice.action ^binding.extension.valueString = "DeviceActionKind"
* focalDevice.action ^binding.description = "A kind of change that happened to the device during the procedure."
* focalDevice.manipulated 1..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Device) "Device that was changed" "The device that was manipulated (changed) during the procedure."
* usedReference undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Device or https://fhir.kemkes.go.id/r4/StructureDefinition/Medication or https://fhir.kemkes.go.id/r4/StructureDefinition/Substance) "Items used during procedure" "Identifies medications, devices and any other substance used as part of the procedure."
* usedReference ^comment = "For devices actually implanted or removed, use Procedure.device."
* usedReference ^requirements = "Used for tracking contamination, etc."
* usedCode undefined..undefined CodeableConcept "Coded items used during the procedure" "Identifies coded items that were used as part of the procedure."
* usedCode from http://hl7.org/fhir/ValueSet/device-kind (example)
* usedCode ^comment = "For devices actually implanted or removed, use Procedure.device."
* usedCode ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* usedCode ^binding.extension.valueString = "ProcedureUsed"
* usedCode ^binding.description = "Codes describing items used during a procedure."