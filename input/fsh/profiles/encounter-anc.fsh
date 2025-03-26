Profile: ANCEncounter
Parent: SatuSehatEncounter
Id: ANCEncounter
Title: "Antenatal Care Encounter"
Description: "An interaction between a pregnant individual and a healthcare provider for the purpose of conducting antenatal assessments, providing maternal and fetal health services, and ensuring continuity of care throughout pregnancy. This includes routine check-ups, screenings, interventions, and counseling as part of comprehensive antenatal care."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/Encounter"
* ^status = #draft
* ^type = "Encounter"
* ^meta.lastUpdated = "2025-02-11T06:32:01.879599+00:00"
* ^publisher = "Health Level Seven International (Patient Administration)"
* . ^short = "An interaction during which services are provided to the patient"
* . ^definition = "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."
* . ^alias[0] = "Visit"
* identifier 1..1 MS SU // Identifier "Identifier(s) by which this encounter is known" "Identifier(s) by which this encounter is known. The transmission of ANC visit data through the Encounter.identifier element is carried out for each ANC/pregnancy visit by providing information on whether the visit falls into the category of K1 akses, K1 murni, K2 visit, and so on."
* identifier ^short = "Identifier(s) by which this encounter is known"
* identifier ^definition = "Identifier(s) by which this encounter is known. The transmission of ANC visit data through the Encounter.identifier element is carried out for each ANC/pregnancy visit by providing information on whether the visit falls into the category of K1 akses, K1 murni, K2 visit, and so on."
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "value"
* identifier ^slicing.rules = #open
* identifier contains 
    K1A 0..1 MS and 
    K1M 0..1 MS and 
    K2 0..1 MS and 
    K3 0..1 MS and 
    K4 0..1 MS and 
    K5 0..1 MS and 
    K6 0..1 MS
* identifier[K1A] only Identifier
* identifier[K1A] ^fixedIdentifier.system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K1A] ^fixedIdentifier.value = "K1A"
* identifier[K1M] only Identifier
* identifier[K1M] ^fixedIdentifier.system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K1M] ^fixedIdentifier.value = "K1M"
* identifier[K2] only Identifier
* identifier[K2] ^fixedIdentifier.system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K2] ^fixedIdentifier.value = "K2"
* identifier[K3] only Identifier
* identifier[K3] ^fixedIdentifier.system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K3] ^fixedIdentifier.value = "K3"
* identifier[K4] only Identifier
* identifier[K4] ^fixedIdentifier.system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K4] ^fixedIdentifier.value = "K4"
* identifier[K5] only Identifier
* identifier[K5] ^fixedIdentifier.system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K5] ^fixedIdentifier.value = "K5"
* identifier[K6] only Identifier
* identifier[K6] ^fixedIdentifier.system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare/ANC"
* identifier[K6] ^fixedIdentifier.value = "K6"

* identifier.value ^requirements = "To track the patient antenatal care visit in accordance with national regulation."
* subject only Reference(ANCPatient)
* episodeOfCare only Reference(ANCEpisodeOfCare)
// * diagnosis.condition only Reference(Condition or Procedure)