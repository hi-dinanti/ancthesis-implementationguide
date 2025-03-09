Mapping: fhirdocumentreference
Id: fhirdocumentreference
Title: "FHIR DocumentReference"
Source: Composition
Target: "http://hl7.org/fhir/documentreference"
* -> "when described by DocumentReference"
* identifier -> "DocumentReference.masterIdentifier"
* status -> "DocumentReference.status"
* type -> "DocumentReference.type"
* category -> "DocumenttReference.category"
* subject -> "DocumentReference.subject"
* encounter -> "DocumentReference.context.encounter"
* date -> "DocumentReference.content.attachment.date, DocumentReference.created"
* author -> "DocumentReference.agent"
* title -> "DocumentReference.description, DocumentReference.content.attachment.title"
* confidentiality -> "DocumentReference.securityLabel"
* attester -> "DocumentReference.authenticator"
* custodian -> "DocumentReference.custodian"
* relatesTo -> "DocumentReference.relatesTo"
* relatesTo.code -> "DocumentReference.relatesTo.code"
* relatesTo.target[x] -> "DocumentReference.relatesTo.target"
* event -> "DocumentReference.event"
* event.code -> "DocumentReference.event.code"
* event.period -> "DocumentReference.event.period"