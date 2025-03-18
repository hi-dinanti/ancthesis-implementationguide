Profile: ProteinUrine
Parent: $Observation
Id: ProteinUrine
Title: "Protein Urine (Observation)" 
Description: "Observation representing the protein concentration in urine, measured by test strip. This data supports antenatal care assessments for preeclampsia screening and other prenatal complications as part of 10T minimum service exam."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/Observation"
* ^status = #draft
* ^experimental = true
* category 0..1 
* category ^comment = "Classification of  type of observation. A code that classifies the general type of observation being made."
* category from http://hl7.org/fhir/ValueSet/observation-category (preferred) 
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"
* category ^comment = "In addition to the required category valueset, this element allows various categorization schemes based on the owner’s definition of the category and effectively multiple categories can be used at once.  The level of granularity is defined by the category concepts in the value set."
* category ^requirements = "Used for filtering what observations are retrieved and displayed."
* category ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."

* code 1..1 MS
* code.coding 1..* MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #closed
* code.coding contains
    LOINC 0..1 MS and
    ANC 0..1 MS
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #5804-0
* code.coding[LOINC].display = "Protein [mass/volume] in urine by test strip"
* code.coding[ANC].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[ANC].code = #ANC.B9.DE114
* code.coding[ANC].display = "Urine test conducted"

* value[x] 0..1 MS 
* value[x] ^comment = "Value can be Quantity or CodeableConcept. ValueCodeableConcept refers to .component."
* valueQuantity 0..1
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg/dL
* valueQuantity ^short = "Protein concentration in urine (mg/dL)"

// Define component slicing
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// Define components for each protein concentration level
* component contains
    pos 0..1 MS and
    neg 0..1 MS and
    one_plus 0..1 MS and
    two_plus 0..1 MS and
    three_plus 0..1 MS and
    four_plus 0..1 MS

// Define LOINC coding for all components
* component[pos].code.coding.system = "http://loinc.org"
* component[pos].code.coding.code = #LA6576-8
* component[pos].code.coding.display = "Positive"

* component[neg].code.coding.system = "http://loinc.org"
* component[neg].code.coding.code = #LA6577-6
* component[neg].code.coding.display = "Negative"

* component[one_plus].code.coding.system = "http://loinc.org"
* component[one_plus].code.coding.code = #LA11841-6
* component[one_plus].code.coding.display = "1+"

* component[two_plus].code.coding.system = "http://loinc.org"
* component[two_plus].code.coding.code = #LA11842-4
* component[two_plus].code.coding.display = "2+"

* component[three_plus].code.coding.system = "http://loinc.org"
* component[three_plus].code.coding.code = #LA11843-2
* component[three_plus].code.coding.display = "3+"

* component[four_plus].code.coding.system = "http://loinc.org"
* component[four_plus].code.coding.code = #LA11844-0
* component[four_plus].code.coding.display = "4+"


* subject 0..1 MS 
* subject only Reference($pwskia-patient) //Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Location) "Who and/or what the observation is about. The patient, or group of patients, location, or device this observation is about and into whose record the observation is placed. If the actual focus of the observation is different from the subject (or a sample of, part, or region of the subject), the `focus` element or the `code` itself specifies the actual focus of the observation."
* subject ^comment = "One would expect this element to be a cardinality of 1..1. The only circumstance in which the subject can be missing is when the observation is made by a device that does not know the patient. In this case, the observation SHALL be matched to a patient through some context/channel matching technique, and at this point, the observation should be updated."
* subject ^requirements = "Observations have no value if you don't know who or what they're about."

* note 0..1 // Annotation "Comments about the observation. Comments about the observation or the results."
* note ^comment = "May include general statements about the observation, or statements about significant, unexpected or unreliable results values, or information about its source when relevant to its interpretation."
* note ^requirements = "Need to be able to provide free text additional information."