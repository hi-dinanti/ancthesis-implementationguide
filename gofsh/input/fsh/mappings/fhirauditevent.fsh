Mapping: fhirauditevent
Id: fhirauditevent
Title: "FHIR AuditEvent Mapping"
Source: Provenance
Target: "http://hl7.org/fhir/auditevent"
* target -> "AuditEvent.entity.reference"
* recorded -> "AuditEvent.recorded"
* policy -> "AuditEvent.agent.policy"
* location -> "AuditEvent.agent.location"
* reason -> "AuditEvent.purposeOfEvent"
* agent -> "AuditEvent.agent"
* agent.type -> "AuditEvent.agent.type"
* agent.role -> "AuditEvent.agent.role"
* entity -> "AuditEvent.entity"
* entity.role -> "AuditEvent.entity.lifecycle"
* entity.what -> "AuditEvent.entity.reference"