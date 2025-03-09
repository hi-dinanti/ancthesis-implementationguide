Invariant: bdl-5
Description: "must be a resource unless there's a request or response"
* severity = #error
* expression = "resource.exists() or request.exists() or response.exists()"
* xpath = "exists(f:resource) or exists(f:request) or exists(f:response)"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"