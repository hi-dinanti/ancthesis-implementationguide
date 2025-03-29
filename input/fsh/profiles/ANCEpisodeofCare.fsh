Profile: ANCEpisodeOfCare
Parent: SatuSehatEpisodeOfCare
Id: ANCEpisodeOfCare
Title: "Antenatal Care Episode of Care"
Description: "An association between a patient and an organization/healthcare provider(s) for antenatal care, following Indonesian standards that consist of a minimum of six visits. The managing organization assumes a level of responsibility for the patient during this period, ensuring comprehensive maternal health services."
* ^url = "https://fhir.pwskia.id/r4/StructureDefinition/EpisodeOfCare"
* ^status = #active
* ^type = "EpisodeOfCare"

* identifier 1..1
* identifier ^comment = "The EpisodeOfCare may be known by different identifiers for different contexts of use, such as when an external agency is tracking the Episode for funding purposes."

* type 1..1 MS
* type.coding 1..1
* type.coding.system = "http://terminology.kemkes.go.id/CodeSystem/episodeofcare-type"
* type.coding.code = #ANC
* type.coding.display = "Antenatal Care"

* type ^comment = "The type can be crucial in processing, as it may determine whether the EpisodeOfCare is relevant for specific government reporting on antenatal care services or other maternal health classifications."
* type ^binding.extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension[=].valueString = "EpisodeOfCareType"
* type ^binding.description = "The type of the episode of care."
* type from http://hl7.org/fhir/ValueSet/episodeofcare-type (example)

* patient only Reference(ANCPatient)
* patient ^comment = "The patient who is the focus of this episode of care."

* managingOrganization 0..1 SU 
* managingOrganization ^comment = "The organization that has assumed the specific responsibilities for the specified duration."

* period 1..1 SU
* period ^comment = "The interval during which the managing organization assumes the defined responsibility."