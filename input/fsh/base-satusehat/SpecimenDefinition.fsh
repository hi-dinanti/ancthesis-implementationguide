Resource: SpecimenDefinition
Id: SpecimenDefinition
Description: "A kind of specimen with associated set of requirements."
* ^meta.lastUpdated = "2019-10-31T22:29:23.356+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Specialized.Definitional Artifacts"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #anonymous
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
* ^status = #draft
* ^date = "2023-05-12T04:00:39.3091812+00:00"
* ^publisher = "Health Level Seven International (Orders and Observations)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/orders/index.cfm"
* . ^short = "Kind of specimen"
* . ^definition = "A kind of specimen with associated set of requirements."
* identifier 0..1 SU Identifier "Business identifier of a kind of specimen" "A business identifier associated with the kind of specimen."
* typeCollected 0..1 SU CodeableConcept "Kind of material to collect" "The kind of material to be collected."
* typeCollected from http://terminology.hl7.org/ValueSet/v2-0487 (example)
* typeCollected ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* typeCollected ^binding.extension.valueString = "CollectedSpecimenType"
* typeCollected ^binding.description = "The type of the specimen to be collected."
* patientPreparation 0..* SU CodeableConcept "Patient preparation for collection" "Preparation of the patient for specimen collection."
* patientPreparation from http://hl7.org/fhir/ValueSet/prepare-patient-prior-specimen-collection (example)
* patientPreparation ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* patientPreparation ^binding.extension.valueString = "PreparePatient"
* patientPreparation ^binding.description = "Checks on the patient prior specimen collection."
* timeAspect 0..1 SU string "Time aspect for collection" "Time aspect of specimen collection (duration or offset)."
* timeAspect ^example.label = "General"
* timeAspect ^example.valueString = "24 hour, 20' post charge"
* collection 0..* SU CodeableConcept "Specimen collection procedure" "The action to be performed for collecting the specimen."
* collection from http://hl7.org/fhir/ValueSet/specimen-collection (example)
* collection ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* collection ^binding.extension.valueString = "SpecimenCollection"
* collection ^binding.description = "The action to collect a type of specimen."
* typeTested 0..* BackboneElement "Specimen in container intended for testing by lab" "Specimen conditioned in a container as expected by the testing laboratory."
* typeTested.isDerived 0..1 boolean "Primary or secondary specimen" "Primary of secondary specimen."
* typeTested.isDerived ^example.label = "General"
* typeTested.isDerived ^example.valueBoolean = false
* typeTested.type 0..1 CodeableConcept "Type of intended specimen" "The kind of specimen conditioned for testing expected by lab."
* typeTested.type from http://terminology.hl7.org/ValueSet/v2-0487 (example)
* typeTested.type ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* typeTested.type ^binding.extension.valueString = "IntendedSpecimenType"
* typeTested.type ^binding.description = "The type of specimen conditioned in a container for lab testing."
* typeTested.preference 1..1 code "preferred | alternate" "The preference for this type of conditioned specimen."
* typeTested.preference from http://hl7.org/fhir/ValueSet/specimen-contained-preference|4.0.1 (required)
* typeTested.preference ^example.label = "General"
* typeTested.preference ^example.valueCode = #"preferred, alternate"
* typeTested.preference ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* typeTested.preference ^binding.extension.valueString = "SpecimenContainedPreference"
* typeTested.preference ^binding.description = "Degree of preference of a type of conditioned specimen."
* typeTested.container 0..1 BackboneElement "The specimen's container" "The specimen's container."
* typeTested.container.material 0..1 CodeableConcept "Container material" "The type of material of the container."
* typeTested.container.material from http://hl7.org/fhir/ValueSet/container-material (example)
* typeTested.container.material ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* typeTested.container.material ^binding.extension.valueString = "ContainerMaterial"
* typeTested.container.material ^binding.description = "Types of material for specimen containers."
* typeTested.container.type 0..1 CodeableConcept "Kind of container associated with the kind of specimen" "The type of container used to contain this kind of specimen."
* typeTested.container.type from http://hl7.org/fhir/ValueSet/specimen-container-type (example)
* typeTested.container.type ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* typeTested.container.type ^binding.extension.valueString = "ContainerType"
* typeTested.container.type ^binding.description = "Type of specimen container."
* typeTested.container.cap 0..1 CodeableConcept "Color of container cap" "Color of container cap."
* typeTested.container.cap from http://hl7.org/fhir/ValueSet/container-cap (example)
* typeTested.container.cap ^requirements = "From ISO 6710-2017 Table F.1 Recommended colour codes."
* typeTested.container.cap ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* typeTested.container.cap ^binding.extension.valueString = "ContainerCap"
* typeTested.container.cap ^binding.description = "Color of the container cap."
* typeTested.container.description 0..1 string "Container description" "The textual description of the kind of container."
* typeTested.container.description ^example.label = "General"
* typeTested.container.description ^example.valueString = "Blue top tube with citrate"
* typeTested.container.capacity 0..1 https://fhir.kemkes.go.id/r4/StructureDefinition/SimpleQuantity "Container capacity" "The capacity (volume or other measure) of this kind of container."
* typeTested.container.minimumVolume[x] 0..1 https://fhir.kemkes.go.id/r4/StructureDefinition/SimpleQuantity or string "Minimum volume" "The minimum volume to be conditioned in the container."
* typeTested.container.additive 0..* BackboneElement "Additive associated with container" "Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA."
* typeTested.container.additive.additive[x] 1..1 CodeableConcept or Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Substance) "Additive associated with container" "Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA."
* typeTested.container.additive.additive[x] from http://terminology.hl7.org/ValueSet/v2-0371 (example)
* typeTested.container.additive.additive[x] ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* typeTested.container.additive.additive[x] ^binding.extension.valueString = "ContainerAdditive"
* typeTested.container.additive.additive[x] ^binding.description = "Substance added to specimen container."
* typeTested.container.preparation 0..1 string "Specimen container preparation" "Special processing that should be applied to the container for this kind of specimen."
* typeTested.requirement 0..1 string "Specimen requirements" "Requirements for delivery and special handling of this kind of conditioned specimen."
* typeTested.retentionTime 0..1 Duration "Specimen retention time" "The usual time that a specimen of this kind is retained after the ordered tests are completed, for the purpose of additional testing."
* typeTested.rejectionCriterion 0..* CodeableConcept "Rejection criterion" "Criterion for rejection of the specimen in its container by the laboratory."
* typeTested.rejectionCriterion from http://hl7.org/fhir/ValueSet/rejection-criteria (example)
* typeTested.rejectionCriterion ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* typeTested.rejectionCriterion ^binding.extension.valueString = "RejectionCriterion"
* typeTested.rejectionCriterion ^binding.description = "Criterion for rejection of the specimen by laboratory."
* typeTested.handling 0..* BackboneElement "Specimen handling before testing" "Set of instructions for preservation/transport of the specimen at a defined temperature interval, prior the testing process."
* typeTested.handling.temperatureQualifier 0..1 CodeableConcept "Temperature qualifier" "It qualifies the interval of temperature, which characterizes an occurrence of handling. Conditions that are not related to temperature may be handled in the instruction element."
* typeTested.handling.temperatureQualifier from http://hl7.org/fhir/ValueSet/handling-condition (example)
* typeTested.handling.temperatureQualifier ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* typeTested.handling.temperatureQualifier ^binding.extension.valueString = "HandlingConditionSet"
* typeTested.handling.temperatureQualifier ^binding.description = "Set of handling instructions prior testing of the specimen."
* typeTested.handling.temperatureRange 0..1 Range "Temperature range" "The temperature interval for this set of handling instructions."
* typeTested.handling.maxDuration 0..1 Duration "Maximum preservation time" "The maximum time interval of preservation of the specimen with these conditions."
* typeTested.handling.instruction 0..1 string "Preservation instruction" "Additional textual instructions for the preservation or transport of the specimen. For instance, 'Protect from light exposure'."
* typeTested.handling.instruction ^example.label = "General"
* typeTested.handling.instruction ^example.valueString = "freeze within 4 hours"