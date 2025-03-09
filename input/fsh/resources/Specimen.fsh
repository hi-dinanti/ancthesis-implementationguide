Resource: Specimen
Id: Specimen
Description: "A sample to be used for analysis."
* ^meta.lastUpdated = "2025-02-11T05:34:09.1559937+00:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/Specimen"
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "Health Level Seven International (Orders and Observations)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/orders/index.cfm"
* . ^short = "Sample for analysis"
* . ^definition = "A sample to be used for analysis."
* identifier undefined..undefined SU Identifier "External Identifier" "Id for specimen."
* accessionIdentifier undefined..1 SU Identifier "Identifier assigned by the lab" "The identifier assigned by the lab when accessioning specimen(s). This is not necessarily the same as the specimen identifier, depending on local lab procedures."
* status undefined..1 ?! SU code "available | unavailable | unsatisfactory | entered-in-error" "The availability of the specimen."
* status from http://hl7.org/fhir/ValueSet/specimen-status|4.0.1 (required)
* status ^comment = "This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid."
* status ^isModifierReason = "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "SpecimenStatus"
* status ^binding.description = "Codes providing the status/availability of a specimen."
* type undefined..1 SU CodeableConcept "Kind of material that forms the specimen" "The kind of material that forms the specimen."
* type from http://terminology.hl7.org/ValueSet/v2-0487 (example)
* type ^comment = "The type can change the way that a specimen is handled and drives what kind of analyses can properly be performed on the specimen. It is frequently used in diagnostic work flow decision making systems."
* type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension.valueString = "SpecimenType"
* type ^binding.description = "The type of the specimen."
* subject undefined..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Substance or http://hl7.org/fhir/StructureDefinition/Location) "Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance or a device" "Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance or a device."
* subject ^requirements = "Must know the subject context."
* receivedTime undefined..1 SU dateTime "The time when specimen was received for processing" "Time when specimen was received for processing or testing."
* parent undefined..undefined Reference(http://hl7.org/fhir/StructureDefinition/Specimen) "Specimen from which this specimen originated" "Reference to the parent (source) specimen which is used when the specimen was either derived from or a component of another specimen."
* parent ^comment = "The parent specimen could be the source from which the current specimen is derived by some processing step (e.g. an aliquot or isolate or extracted nucleic acids from clinical samples) or one of many specimens that were combined to create a pooled sample."
* request undefined..undefined Reference(http://hl7.org/fhir/StructureDefinition/ServiceRequest) "Why the specimen was collected" "Details concerning a service request that required a specimen to be collected."
* request ^comment = "The request may be explicit or implied such with a ServiceRequest that requires a blood draw."
* collection undefined..1 BackboneElement "Collection details" "Details concerning the specimen collection."
* collection.collector undefined..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole) "Who collected the specimen" "Person who collected the specimen."
* collection.collected[x] undefined..1 SU dateTime or Period "Collection time" "Time when specimen was collected from subject - the physiologically relevant time."
* collection.duration undefined..1 SU Duration "How long it took to collect specimen" "The span of time over which the collection of a specimen occurred."
* collection.quantity undefined..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "The quantity of specimen collected" "The quantity of specimen collected; for instance the volume of a blood sample, or the physical measurement of an anatomic pathology sample."
* collection.method undefined..1 CodeableConcept "Technique used to perform collection" "A coded value specifying the technique that is used to perform the procedure."
* collection.method from http://hl7.org/fhir/ValueSet/specimen-collection-method (example)
* collection.method ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* collection.method ^binding.extension.valueString = "SpecimenCollectionMethod"
* collection.method ^binding.description = "The  technique that is used to perform the procedure."
* collection.bodySite undefined..1 CodeableConcept "Anatomical collection site" "Anatomical location from which the specimen was collected (if subject is a patient). This is the target site.  This element is not used for environmental specimens."
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (example)
* collection.bodySite ^comment = "If the use case requires  BodySite to be handled as a separate resource instead of an inline coded element (e.g. to identify and track separately)  then use the standard extension [bodySite](extension-bodysite.html)."
* collection.bodySite ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* collection.bodySite ^binding.extension.valueString = "BodySite"
* collection.bodySite ^binding.description = "Codes describing anatomical locations. May include laterality."
* collection.fastingStatus[x] undefined..1 SU CodeableConcept or Duration "Whether or how long patient abstained from food and/or drink" "Abstinence or reduction from some or all food, drink, or both, for a period of time prior to sample collection."
* collection.fastingStatus[x] from http://terminology.hl7.org/ValueSet/v2-0916 (extensible)
* collection.fastingStatus[x] ^comment = "Representing fasting status using this element is preferred to representing it with an observation using a 'pre-coordinated code'  such as  LOINC 2005-7 (Calcium [Moles/​time] in 2 hour Urine --12 hours fasting), or  using  a component observation ` such as `Observation.component code`  = LOINC 49541-6 (Fasting status - Reported)."
* collection.fastingStatus[x] ^requirements = "Many diagnostic tests require fasting  to facilitate accurate interpretation."
* collection.fastingStatus[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* collection.fastingStatus[x] ^binding.extension.valueString = "FastingStatus"
* collection.fastingStatus[x] ^binding.description = "Codes describing the fasting status of the patient."
* processing undefined..undefined BackboneElement "Processing and processing step details" "Details concerning processing and processing steps for the specimen."
* processing.description undefined..1 string "Textual description of procedure" "Textual description of procedure."
* processing.procedure undefined..1 CodeableConcept "Indicates the treatment step  applied to the specimen" "A coded value specifying the procedure used to process the specimen."
* processing.procedure from http://hl7.org/fhir/ValueSet/specimen-processing-procedure (example)
* processing.procedure ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* processing.procedure ^binding.extension.valueString = "SpecimenProcessingProcedure"
* processing.procedure ^binding.description = "Type indicating the technique used to process the specimen."
* processing.additive undefined..undefined Reference(http://hl7.org/fhir/StructureDefinition/Substance) "Material used in the processing step" "Material used in the processing step."
* processing.time[x] undefined..1 dateTime or Period "Date and time of specimen processing" "A record of the time or period when the specimen processing occurred.  For example the time of sample fixation or the period of time the sample was in formalin."
* container undefined..undefined BackboneElement "Direct container of specimen (tube/slide, etc.)" "The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not addressed here."
* container.identifier undefined..undefined SU Identifier "Id for the container" "Id for container. There may be multiple; a manufacturer's bar code, lab assigned identifier, etc. The container ID may differ from the specimen id in some circumstances."
* container.description undefined..1 string "Textual description of the container" "Textual description of the container."
* container.type undefined..1 CodeableConcept "Kind of container directly associated with specimen" "The type of container associated with the specimen (e.g. slide, aliquot, etc.)."
* container.type from http://hl7.org/fhir/ValueSet/specimen-container-type (example)
* container.type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* container.type ^binding.extension.valueString = "SpecimenContainerType"
* container.type ^binding.description = "Type of specimen container."
* container.capacity undefined..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Container volume or size" "The capacity (volume or other measure) the container may contain."
* container.specimenQuantity undefined..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Quantity of specimen within container" "The quantity of specimen in the container; may be volume, dimensions, or other appropriate measurements, depending on the specimen type."
* container.additive[x] undefined..1 CodeableConcept or Reference(http://hl7.org/fhir/StructureDefinition/Substance) "Additive associated with container" "Introduced substance to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA."
* container.additive[x] from http://terminology.hl7.org/ValueSet/v2-0371 (example)
* container.additive[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* container.additive[x] ^binding.extension.valueString = "SpecimenContainerAdditive"
* container.additive[x] ^binding.description = "Substance added to specimen container."
* condition undefined..undefined SU CodeableConcept "State of the specimen" "A mode or state of being that describes the nature of the specimen."
* condition from http://terminology.hl7.org/ValueSet/v2-0493 (extensible)
* condition ^comment = "Specimen condition is an observation made about the specimen.  It's a point-in-time assessment.  It can be used to assess its quality or appropriateness for a specific test."
* condition ^requirements = "The specimen condition can be used to assess its quality or appropriateness for a specific test."
* condition ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* condition ^binding.extension.valueString = "SpecimenCondition"
* condition ^binding.description = "Codes describing the state of the specimen."
* note undefined..undefined Annotation "Comments" "To communicate any details or issues about the specimen or during the specimen collection. (for example: broken vial, sent with patient, frozen)."