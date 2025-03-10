Resource: ObservationDefinition
Id: ObservationDefinition
Description: "Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health care service."
* ^meta.lastUpdated = "2019-10-31T22:29:23.356+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Specialized.Definitional Artifacts"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #business
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
* ^status = #draft
* ^date = "2023-05-12T04:00:39.3091812+00:00"
* ^publisher = "Health Level Seven International (Orders and Observations)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/orders/index.cfm"
* ^purpose = "In a catalog of health-related services that use or produce observations and measurements, this resource describes the expected characteristics of these observation / measurements."
* . ^short = "Definition of an observation"
* . ^definition = "Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health care service."
* . ^comment = "An instance of this resource informs the consumer of a health-related service (such as a lab diagnostic test or panel) about how the observations used or produced by this service will look like."
* category 0..* SU CodeableConcept "Category of observation" "A code that classifies the general type of observation."
* category from http://hl7.org/fhir/ValueSet/observation-category (example)
* category ^comment = "This element allows various categorization schemes based on the owner’s definition of the category and effectively multiple categories can be used for one instance of ObservationDefinition. The level of granularity is defined by the category concepts in the value set."
* category ^requirements = "Used for filtering what kinds of observations are retrieved and displayed."
* category ^alias = "Class of observation"
* category ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension[=].valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."
* code 1..1 SU CodeableConcept "Type of observation (code / type)" "Describes what will be observed. Sometimes this is called the observation \"name\"."
* code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* code ^requirements = "Knowing what kind of observation is being made is essential to understanding the observation."
* code ^alias = "Name"
* code ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "ObservationCode"
* code ^binding.description = "Codes identifying names of simple observations."
* identifier 0..* SU Identifier "Business identifier for this ObservationDefinition instance" "A unique identifier assigned to this ObservationDefinition artifact."
* permittedDataType 0..* code "Quantity | CodeableConcept | string | boolean | integer | Range | Ratio | SampledData | time | dateTime | Period" "The data types allowed for the value element of the instance observations conforming to this ObservationDefinition."
* permittedDataType from http://hl7.org/fhir/ValueSet/permitted-data-type|4.0.1 (required)
* permittedDataType ^example.label = "General"
* permittedDataType ^example.valueCode = #CodeableConcept
* permittedDataType ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* permittedDataType ^binding.extension[=].valueString = "ObservationDataType"
* permittedDataType ^binding.description = "Permitted data type for observation value."
* multipleResultsAllowed 0..1 boolean "Multiple results allowed" "Multiple results allowed for observations conforming to this ObservationDefinition."
* multipleResultsAllowed ^comment = "An example of observation allowing multiple results is \"bacteria identified by culture\". Conversely, the measurement of a potassium level allows a single result."
* multipleResultsAllowed ^example.label = "General"
* multipleResultsAllowed ^example.valueBoolean = true
* method 0..1 CodeableConcept "Method used to produce the observation" "The method or technique used to perform the observation."
* method from http://hl7.org/fhir/ValueSet/observation-methods (example)
* method ^comment = "Only used if not implicit in observation code."
* method ^requirements = "In some cases, method can impact results."
* method ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* method ^binding.extension[=].valueString = "ObservationMethod"
* method ^binding.description = "Methods for simple observations."
* preferredReportName 0..1 string "Preferred report name" "The preferred name to be used when reporting the results of observations conforming to this ObservationDefinition."
* quantitativeDetails 0..1 BackboneElement "Characteristics of quantitative results" "Characteristics for quantitative results of this observation."
* quantitativeDetails.customaryUnit 0..1 CodeableConcept "Customary unit for quantitative results" "Customary unit used to report quantitative results of observations conforming to this ObservationDefinition."
* quantitativeDetails.customaryUnit from http://hl7.org/fhir/ValueSet/ucum-units (extensible)
* quantitativeDetails.customaryUnit ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* quantitativeDetails.customaryUnit ^binding.extension[=].valueString = "ObservationUnit"
* quantitativeDetails.customaryUnit ^binding.description = "Codes identifying units of measure."
* quantitativeDetails.unit 0..1 CodeableConcept "SI unit for quantitative results" "SI unit used to report quantitative results of observations conforming to this ObservationDefinition."
* quantitativeDetails.unit from http://hl7.org/fhir/ValueSet/ucum-units (extensible)
* quantitativeDetails.unit ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* quantitativeDetails.unit ^binding.extension[=].valueString = "ObservationUnit"
* quantitativeDetails.unit ^binding.description = "Codes identifying units of measure."
* quantitativeDetails.conversionFactor 0..1 decimal "SI to Customary unit conversion factor" "Factor for converting value expressed with SI unit to value expressed with customary unit."
* quantitativeDetails.decimalPrecision 0..1 integer "Decimal precision of observation quantitative results" "Number of digits after decimal separator when the results of such observations are of type Quantity."
* qualifiedInterval 0..* BackboneElement "Qualified range for continuous and ordinal observation results" "Multiple  ranges of results qualified by different contexts for ordinal or continuous observations conforming to this ObservationDefinition."
* qualifiedInterval.category 0..1 code "reference | critical | absolute" "The category of interval of values for continuous or ordinal observations conforming to this ObservationDefinition."
* qualifiedInterval.category from http://hl7.org/fhir/ValueSet/observation-range-category|4.0.1 (required)
* qualifiedInterval.category ^example.label = "General"
* qualifiedInterval.category ^example.valueCode = #critical
* qualifiedInterval.category ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* qualifiedInterval.category ^binding.extension[=].valueString = "ObservationRangeCategory"
* qualifiedInterval.category ^binding.description = "Codes identifying the category of observation range."
* qualifiedInterval.range 0..1 Range "The interval itself, for continuous or ordinal observations" "The low and high values determining the interval. There may be only one of the two."
* qualifiedInterval.range ^requirements = "The unit may be not relevant for ordinal values. In case it is there, it is the same as quantitativeDetails.unit."
* qualifiedInterval.context 0..1 CodeableConcept "Range context qualifier" "Codes to indicate the health context the range applies to. For example, the normal or therapeutic range."
* qualifiedInterval.context from http://hl7.org/fhir/ValueSet/referencerange-meaning (extensible)
* qualifiedInterval.context ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* qualifiedInterval.context ^binding.extension[=].valueString = "ObservationRangeMeaning"
* qualifiedInterval.context ^binding.description = "Code identifying the health context of a range."
* qualifiedInterval.appliesTo 0..* CodeableConcept "Targetted population of the range" "Codes to indicate the target population this reference range applies to."
* qualifiedInterval.appliesTo from http://hl7.org/fhir/ValueSet/referencerange-appliesto (example)
* qualifiedInterval.appliesTo ^comment = "If this element is not present then the global population is assumed."
* qualifiedInterval.appliesTo ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* qualifiedInterval.appliesTo ^binding.extension[=].valueString = "ObservationRangeAppliesTo"
* qualifiedInterval.appliesTo ^binding.description = "Codes identifying the population the reference range applies to."
* qualifiedInterval.gender 0..1 code "male | female | other | unknown" "Sex of the population the range applies to."
* qualifiedInterval.gender from http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1 (required)
* qualifiedInterval.gender ^example.label = "General"
* qualifiedInterval.gender ^example.valueCode = #female
* qualifiedInterval.gender ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* qualifiedInterval.gender ^binding.extension[=].valueString = "AdministrativeGender"
* qualifiedInterval.gender ^binding.extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-isCommonBinding"
* qualifiedInterval.gender ^binding.extension[=].valueBoolean = true
* qualifiedInterval.gender ^binding.description = "The gender of a person used for administrative purposes."
* qualifiedInterval.age 0..1 Range "Applicable age range, if relevant" "The age at which this reference range is applicable. This is a neonatal age (e.g. number of weeks at term) if the meaning says so."
* qualifiedInterval.age ^comment = "Some analytes vary greatly over age."
* qualifiedInterval.gestationalAge 0..1 Range "Applicable gestational age range, if relevant" "The gestational age to which this reference range is applicable, in the context of pregnancy."
* qualifiedInterval.condition 0..1 string "Condition associated with the reference range" "Text based condition for which the reference range is valid."
* validCodedValueSet 0..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/ValueSet) "Value set of valid coded values for the observations conforming to this ObservationDefinition" "The set of valid coded results for the observations  conforming to this ObservationDefinition."
* normalCodedValueSet 0..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/ValueSet) "Value set of normal coded values for the observations conforming to this ObservationDefinition" "The set of normal coded results for the observations conforming to this ObservationDefinition."
* abnormalCodedValueSet 0..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/ValueSet) "Value set of abnormal coded values for the observations conforming to this ObservationDefinition" "The set of abnormal coded results for the observation conforming to this ObservationDefinition."
* criticalCodedValueSet 0..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/ValueSet) "Value set of critical coded values for the observations conforming to this ObservationDefinition" "The set of critical coded results for the observation conforming to this ObservationDefinition."