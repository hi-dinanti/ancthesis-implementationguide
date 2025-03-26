Profile: ANCHemoglobin
Parent: ANCObservation
Id: ANCHemoglobin
Title: "Hemoglobin (Observation)"
Description: "Observation representing blood hemoglobin levels recorded during an antenatal care visit. This data supports anemia screening and maternal health assessment."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCHemoglobin"

* category.coding.code = #laboratory
* category.coding.display = "Laboratory"

// Enable slicing on code.coding
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slices for LOINC and ANC custom codes"

// Define slices explicitly
* code.coding contains LOINC 1..1 MS and ANC 1..1 MS 

// Assign values to the LOINC 
* code.coding[LOINC].system 1..1
* code.coding[LOINC].code 1..1
* code.coding[LOINC].display 1..1
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #718-7
* code.coding[LOINC].display = "Hemoglobin [Mass/volume] in Blood"

// Assign values to the 
* code.coding[ANC].system 1..1
* code.coding[ANC].code 1..1
* code.coding[ANC].display 1..1
* code.coding[ANC].system = "http://fhir.org/guides/who/anc-cds/CodeSystem/anc-custom-codes"
* code.coding[ANC].code = #ANC.B9.DE175
* code.coding[ANC].display = "Blood hemoglobin test conducted"

* value[x] 1..1 
* value[x] only Quantity
* value[x] ^short = "Value type is quantity."
* valueQuantity 1..1 MS 
* valueQuantity ^short = "Blood hemoglobin concentration"
* valueQuantity.value 1..1
* valueQuantity.value only decimal
* valueQuantity.unit = "g/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #g/dL