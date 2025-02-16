Invariant: prr-1
Description: "orderDetail SHALL only be present if code is present"
* severity = #error
* expression = "orderDetail.empty() or code.exists()"
* xpath = "exists(f:code) or not(exists(f:orderDetail))"
* source = "http://hl7.org/fhir/StructureDefinition/ServiceRequest"