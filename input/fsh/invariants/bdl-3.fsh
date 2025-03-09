Invariant: bdl-3
Description: "entry.request mandatory for batch/transaction/history, otherwise prohibited"
* severity = #error
* expression = "entry.all(request.exists() = (%resource.type = 'batch' or %resource.type = 'transaction' or %resource.type = 'history'))"
* xpath = "not(f:entry/f:request) or (f:type/@value = 'batch') or (f:type/@value = 'transaction') or (f:type/@value = 'history')"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"