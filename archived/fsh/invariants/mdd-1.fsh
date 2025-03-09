Invariant: mdd-1
Description: "whenHandedOver cannot be before whenPrepared"
* severity = #error
* expression = "whenHandedOver.empty() or whenPrepared.empty() or whenHandedOver >= whenPrepared"
* xpath = "not(exists(f:whenHandedOver/@value)) or not(exists(f:whenPrepared/@value)) or ( f:whenHandedOver/@value >= f:whenPrepared/@value)"
* source = "http://hl7.org/fhir/StructureDefinition/MedicationDispense"