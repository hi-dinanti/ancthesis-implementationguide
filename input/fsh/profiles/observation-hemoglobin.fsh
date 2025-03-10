Profile: Observation-ANC-Hemoglobin
Parent: $Observation
Id: observation-anc-hemoglobin
Title: "Observation: Blood Hemoglobin"
Description: "Observation representing blood hemoglobin levels recorded during an antenatal care visit. This data supports anemia screening and maternal health assessment."
* ^meta.lastUpdated = "2025-02-11T05:07:46.7875794+00:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #normative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[=].valueCode = #4.0.0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 5
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/Observation"
* ^date = "2021-12-31T08:42:50.9802927+00:00"
* ^publisher = "Health Level Seven International (Orders and Observations)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/orders/index.cfm"
* ^purpose = "Observations are a key aspect of healthcare.  This resource is used to capture those that do not require more sophisticated mechanisms."
* obeys obs-7 and obs-6
* . ^short = "Measurements and simple assertions"
* . ^definition = "Measurements and simple assertions made about a patient, device or other subject."
* . ^comment = "Used for simple observations such as device measurements, laboratory atomic results, vital signs, height, weight, smoking status, comments, etc.  Other resources are used to provide context for observations such as laboratory reports, etc."
* . ^alias[0] = "Vital Signs"
* . ^alias[+] = "Measurement"
* . ^alias[+] = "Results"
* . ^alias[+] = "Tests"
* identifier undefined..undefined SU Identifier "Business Identifier for observation" "A unique identifier assigned to this observation."
* identifier ^requirements = "Allows observations to be distinguished and referenced."
* basedOn undefined..undefined SU Reference(http://hl7.org/fhir/StructureDefinition/CarePlan or http://hl7.org/fhir/StructureDefinition/DeviceRequest or http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation or http://hl7.org/fhir/StructureDefinition/MedicationRequest or http://hl7.org/fhir/StructureDefinition/NutritionOrder or http://hl7.org/fhir/StructureDefinition/ServiceRequest) "Fulfills plan, proposal or order" "A plan, proposal or order that is fulfilled in whole or in part by this event.  For example, a MedicationRequest may require a patient to have laboratory test performed before  it is dispensed."
* basedOn ^requirements = "Allows tracing of authorization for the event and tracking whether proposals/recommendations were acted upon."
* basedOn ^alias[0] = "Fulfills"
* partOf undefined..undefined SU Reference(http://hl7.org/fhir/StructureDefinition/MedicationAdministration or http://hl7.org/fhir/StructureDefinition/MedicationDispense or http://hl7.org/fhir/StructureDefinition/MedicationStatement or http://hl7.org/fhir/StructureDefinition/Procedure or http://hl7.org/fhir/StructureDefinition/Immunization or http://hl7.org/fhir/StructureDefinition/ImagingStudy) "Part of referenced event" "A larger event of which this particular Observation is a component or step.  For example,  an observation as part of a procedure."
* partOf ^comment = "To link an Observation to an Encounter use `encounter`.  See the  [Notes](observation.html#obsgrouping) below for guidance on referencing another Observation."
* partOf ^alias[0] = "Container"
* status 1..1 ?! SU code "registered | preliminary | final | amended +" "The status of the result value."
* status from http://hl7.org/fhir/ValueSet/observation-status|4.0.1 (required)
* status ^slicing.discriminator.type = #value
* status ^slicing.discriminator.path = "$this"
* status ^slicing.rules = #closed
* status contains
    registered 0..1 MS and
    preliminary 0..1 MS and
    final 0..1 MS and
    amended 0..1 MS
* status[registered] = #registered
* status[preliminary] = #preliminary
* status[final] = #final
* status[amended] = #amended
* status ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension[=].valueString = "default: final"
* status ^comment = "This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid."
* status ^requirements = "Need to track the status of individual results. Some results are finalized before the whole report is finalized."
* status ^isModifierReason = "This element is labeled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "ObservationStatus"
* status ^binding.description = "Codes providing the status of an observation."
* category undefined..undefined CodeableConcept "Classification of  type of observation" "A code that classifies the general type of observation being made."
* category from http://hl7.org/fhir/ValueSet/observation-category (preferred)
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #closed
* category.coding contains
    laboratory 1..1 MS
* category.coding[laboratory].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding[laboratory].code = #laboratory
* category.coding[laboratory].display = "Laboratory"
* category ^comment = "In addition to the required category valueset, this element allows various categorization schemes based on the owner’s definition of the category and effectively multiple categories can be used at once.  The level of granularity is defined by the category concepts in the value set."
* category ^requirements = "Used for filtering what observations are retrieved and displayed."
* category ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."
* code 1..1 SU CodeableConcept "Type of observation (code / type)" "Describes what was observed. Sometimes this is called the observation \"name\"."
* code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* code ^comment = "*All* code-value and, if present, component.code-component.value pairs need to be taken into account to correctly understand the meaning of the observation."
* code ^requirements = "Knowing what kind of observation is being made is essential to understanding the observation."
* code ^slicing.discriminator.type = #pattern
* code ^slicing.discriminator.path = "coding"
* code ^slicing.rules = #closed
* code 1..1 MS
* code.coding 1..* MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #closed
* code.coding contains
    loinc 1..1 MS and
    anc-custom 1..1 MS
* code.coding[loinc].system = "http://loinc.org"
* code.coding[loinc].code = #718-7
* code.coding[loinc].display = "Hemoglobin [Mass/volume] in Blood"
* code.coding[anc-custom].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[anc-custom].code = #ANC.B9.DE175
* code.coding[anc-custom].display = "Blood hemoglobin test conducted"
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* code ^binding.description = "Codes identifying names of simple observations."
* subject undefined..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Location) "Who and/or what the observation is about" "The patient, or group of patients, location, or device this observation is about and into whose record the observation is placed. If the actual focus of the observation is different from the subject (or a sample of, part, or region of the subject), the `focus` element or the `code` itself specifies the actual focus of the observation."
* subject ^comment = "One would expect this element to be a cardinality of 1..1. The only circumstance in which the subject can be missing is when the observation is made by a device that does not know the patient. In this case, the observation SHALL be matched to a patient through some context/channel matching technique, and at this point, the observation should be updated."
* subject ^requirements = "Observations have no value if you don't know who or what they're about."
* focus undefined..undefined SU Reference(http://hl7.org/fhir/StructureDefinition/Resource) "What the observation is about, when it is not about the subject of record" "The actual focus of an observation when it is not the patient of record representing something or someone associated with the patient such as a spouse, parent, fetus, or donor. For example, fetus observations in a mother's record.  The focus of an observation could also be an existing condition,  an intervention, the subject's diet,  another observation of the subject,  or a body structure such as tumor or implanted device.   An example use case would be using the Observation resource to capture whether the mother is trained to change her child's tracheostomy tube. In this example, the child is the patient of record and the mother is the focus."
* focus ^comment = "Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., \"Blood Glucose\") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required.  If a code is required instead of a resource use either  `bodysite` for bodysites or the standard extension [focusCode](extension-observation-focuscode.html)."
* encounter undefined..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Encounter) "Healthcare event during which this observation is made" "The healthcare event  (e.g. a patient and healthcare provider interaction) during which this observation is made."
* encounter ^comment = "This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests)."
* encounter ^requirements = "For some observations it may be important to know the link between an observation and a particular encounter."
* encounter ^alias[0] = "Context"
* effective[x] undefined..1 SU dateTime or Period or Timing or instant "Clinically relevant time/time-period for observation" "The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the \"physiologically relevant time\". This is usually either the time of the procedure or of specimen collection, but very often the source of the date/time is not known, only the date/time itself."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the [Timing](datatypes.html#timing) datatype which allow the measurement to be tied to regular life events."
* effective[x] ^requirements = "Knowing when an observation was deemed true is important to its relevance as well as determining trends."
* effective[x] ^alias[0] = "Occurrence"
* issued undefined..1 SU instant "Date/Time this version was made available" "The date and time this version of the observation was made available to providers, typically after the results have been reviewed and verified."
* issued ^comment = "For Observations that don’t require review and verification, it may be the same as the [`lastUpdated` ](resource-definitions.html#Meta.lastUpdated) time of the resource itself.  For Observations that do require review and verification for certain updates, it might not be the same as the `lastUpdated` time of the resource itself due to a non-clinically significant update that doesn’t require the new version to be reviewed and verified again."
* performer undefined..undefined SU Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/CareTeam or http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/RelatedPerson) "Who is responsible for the observation" "Who was responsible for asserting the observed value as \"true\"."
* performer ^requirements = "May give a degree of confidence in the observation and also indicates where follow-up questions should be directed."
* value[x] undefined..1 MS SU Quantity 
* value[x] ^short = "Value type is decimal."
* valueQuantity 1..1 MS
* valueQuantity ^short = "Blood hemoglobin concentration"
* valueQuantity.value 1..1
* valueQuantity.value only decimal
* valueQuantity.unit = "g/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #g/dL
* valueQuantity ^binding.strength = #required
* note undefined..undefined Annotation "Comments about the observation" "Comments about the observation or the results."
* note ^comment = "May include general statements about the observation, or statements about significant, unexpected or unreliable results values, or information about its source when relevant to its interpretation."
* note ^requirements = "Need to be able to provide free text additional information."