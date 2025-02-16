Invariant: bdl-8
Description: "fullUrl cannot be a version specific reference"
* severity = #error
* expression = "fullUrl.contains('/_history/').not()"
* xpath = "not(exists(f:fullUrl[contains(string(@value), '/_history/')]))"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"