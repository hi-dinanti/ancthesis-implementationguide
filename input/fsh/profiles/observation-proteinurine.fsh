Profile: ANCProteinUrine
Parent: ANCObservation
Id: ANCProteinUrine
Title: "Protein Urine (Observation)" 
Description: "Observation representing the protein concentration in urine, measured by test strip. This data supports antenatal care assessments for preeclampsia screening and other prenatal complications as part of 10T minimum service exam."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCProteinUrine"

* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

* code.coding 1..* MS
// Enable slicing on code.coding
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #closed
* code.coding contains LOINC 0..1 MS and ANC 0..1 MS

// Assign values to the LOINC 
* code.coding[LOINC].system 1..1
* code.coding[LOINC].code 1..1
* code.coding[LOINC].display 1..1
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #5804-0
* code.coding[LOINC].display = "Protein [mass/volume] in urine by test strip"

// Assign values to the 
* code.coding[ANC].system 1..1
* code.coding[ANC].code 1..1
* code.coding[ANC].display 1..1
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