Invariant: obs-6
Description: "dataAbsentReason SHALL only be present if Observation.value[x] is not present"
* severity = #error
* expression = "dataAbsentReason.empty() or value.empty()"
* xpath = "not(exists(f:dataAbsentReason)) or (not(exists(*[starts-with(local-name(.), 'value')])))"
* source = "http://hl7.org/fhir/StructureDefinition/Observation"