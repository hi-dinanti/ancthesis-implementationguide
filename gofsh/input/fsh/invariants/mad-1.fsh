Invariant: mad-1
Description: "SHALL have at least one of dosage.dose or dosage.rate[x]"
* severity = #error
* expression = "dose.exists() or rate.exists()"
* xpath = "exists(f:dose) or exists(f:*[starts-with(local-name(.), 'rate')])"
* source = "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"