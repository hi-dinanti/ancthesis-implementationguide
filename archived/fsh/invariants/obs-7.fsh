Invariant: obs-7
Description: "If Observation.code is the same as an Observation.component.code then the value element associated with the code SHALL NOT be present"
* severity = #error
* expression = "value.empty() or component.code.where(coding.intersect(%resource.code.coding).exists()).empty()"
* xpath = "not(f:*[starts-with(local-name(.), 'value')] and (for $coding in f:code/f:coding return f:component/f:code/f:coding[f:code/@value=$coding/f:code/@value] [f:system/@value=$coding/f:system/@value]))"
* source = "http://hl7.org/fhir/StructureDefinition/Observation"