Instance: ImmunizationAdministered
InstanceOf: ANCTdAdministration
Title: "Tetanus Immunization Administered (Example)"
Description: "Immunization instance where tetanus vaccine was administered."
Usage: #example

* identifier.system = "http://sys-ids.kemkes.go.id/episode-of-care/{{Org_id}}"
* identifier.value = "{{Org_id}}"

* status = #completed
* primarySource = true

* vaccineCode.coding.system = "http://sys-ids.kemkes.go.id/kfa"
* vaccineCode.coding.code = #VG139

* patient.reference = "Patient/100000030006"
* patient.display = "Aisyah"

* encounter.reference = "Encounter/{{Encounter_uuid}}"

* occurrenceDateTime = "2023-09-15T10:30:00+00:00"

* recorded = "2023-09-15T10:30:00+00:00"

* location.reference = "Location/{{Location_uuid}}"
* location.display = "Puskesmas Sampang"

* lotNumber = "AB12345678"
* expirationDate = "2024-12-31"

* site.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActSite"
* site.coding.code = #LA
* site.coding.display = "Left Arm"
* route.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration"
* route.coding.code = #IM
* route.coding.display = "Intramuscular"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* doseQuantity.system = "http://unitsofmeasure.org"
* doseQuantity.code = #mL
* performer.function.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0443"
* performer.function.coding.code = #AP
* performer.function.coding.display = "Administering Provider"
* performer.actor.reference = "Practitioner/N10000002"
* performer.actor.display = "Dr. Budi Santoso"
* reasonCode.coding.system = "http://terminology.kemkes.go.id/CodeSystem/immunization-reason"
* reasonCode.coding.code = #IM-WUS
* reasonCode.coding.display = "Imunisasi Program Rutin Lanjutan Wanita Usia Subur"
* protocolApplied.doseNumberPositiveInt = 1