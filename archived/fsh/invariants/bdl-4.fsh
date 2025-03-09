Invariant: bdl-4
Description: "entry.response mandatory for batch-response/transaction-response/history, otherwise prohibited"
* severity = #error
* expression = "entry.all(response.exists() = (%resource.type = 'batch-response' or %resource.type = 'transaction-response' or %resource.type = 'history'))"
* xpath = "not(f:entry/f:response) or (f:type/@value = 'batch-response') or (f:type/@value = 'transaction-response') or (f:type/@value = 'history')"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"