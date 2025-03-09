Invariant: pat-1
Description: "SHALL at least contain a contact's details or a reference to an organization"
* severity = #error
* expression = "name.exists() or telecom.exists() or address.exists() or organization.exists()"
* xpath = "exists(f:name) or exists(f:telecom) or exists(f:address) or exists(f:organization)"
* source = "http://hl7.org/fhir/StructureDefinition/Patient"