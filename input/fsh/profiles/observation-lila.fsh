Profile: ANCMUAC
Parent: ANCObservation
Id: ANCMUAC
Title: "Mid Upper Arm Circumference - LiLA (Observation)"
Description: "Observation representing the mid upper arm circumference (MUAC/LiLA) measurement of the patient. This data supports antenatal care assessments, nutritional evaluations, and maternal health risk stratification."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/ANCMUAC"
* ^status = #active

* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #exam
* category.coding.display = "Exam"

* code 1..1
* code.coding 2..*
* code.coding from ANCMUACVS (required)  

* value[x] 1..1 
* value[x] only Quantity
* value[x] ^short = "Value type is Quantity."
* valueQuantity ^comment = "Mid upper arm circumference measurement"
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

* interpretation.coding 1..1 MS
* interpretation.coding from ANCMUACInterpretationVS (required)

* note ^short = "Interpretation notes based on MUAC measurement."