Resource: OrganizationAffiliation
Id: OrganizationAffiliation
Description: "Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of relationship/sub-division relationship."
* ^meta.lastUpdated = "2019-10-31T22:29:23.356+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Entities"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #business
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^status = #draft
* ^date = "2023-05-12T04:00:39.3091812+00:00"
* ^publisher = "Health Level Seven International (Patient Administration)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pafm/index.cfm"
* ^purpose = "Need to define relationships between organizations that are not sub-divisions of the same organization (part-of relationships)."
* . ^short = "Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of relationship/sub-division relationship"
* . ^definition = "Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of relationship/sub-division relationship."
* identifier 0..* SU Identifier "Business identifiers that are specific to this role" "Business identifiers that are specific to this role."
* identifier ^requirements = "Often, specific identities are assigned for the agent."
* active 0..1 SU boolean "Whether this organization affiliation record is in active use" "Whether this organization affiliation record is in active use."
* active ^comment = "If this value is false, you may refer to the period to see when the role was in active use. If there is no period specified, no inference can be made about when it was active."
* active ^requirements = "Need to be able to mark an organization affiliation record as not to be used because it was created in error, or otherwise no longer in active use."
* active ^meaningWhenMissing = "This resource is generally assumed to be active if no value is provided for the active element"
* period 0..1 SU Period "The period during which the participatingOrganization is affiliated with the primary organization" "The period during which the participatingOrganization is affiliated with the primary organization."
* period ^requirements = "An affiliation may be created ahead of time and only be active for a defined period of time. Once the affiliation is complete, the fact that it existed may still be required."
* organization 0..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Organization where the role is available" "Organization where the role is available (primary organization/has members)."
* participatingOrganization 0..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Organization that provides/performs the role (e.g. providing services or is a member of)" "The Participating Organization provides/performs the role(s) defined by the code to the Primary Organization (e.g. providing services or is a member of)."
* network 0..* SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Health insurance provider network in which the participatingOrganization provides the role's services (if defined) at the indicated locations (if defined)" "Health insurance provider network in which the participatingOrganization provides the role's services (if defined) at the indicated locations (if defined)."
* code 0..* SU CodeableConcept "Definition of the role the participatingOrganization plays" "Definition of the role the participatingOrganization plays in the association."
* code from http://hl7.org/fhir/ValueSet/organization-role (example)
* code ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "OrganizationAffiliation"
* code ^binding.description = "The role the participating organization providing services to the primary organization."
* specialty 0..* SU CodeableConcept "Specific specialty of the participatingOrganization in the context of the role" "Specific specialty of the participatingOrganization in the context of the role."
* specialty from http://hl7.org/fhir/ValueSet/c80-practice-codes (preferred)
* specialty ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* specialty ^binding.extension.valueString = "OrganizationSpecialty"
* specialty ^binding.description = "Specific specialty associated with the participating organization."
* location 0..* SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Location) "The location(s) at which the role occurs" "The location(s) at which the role occurs."
* healthcareService 0..* Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/HealthcareService) "Healthcare services provided through the role" "Healthcare services provided through the role."
* telecom 0..* SU ContactPoint "Contact details at the participatingOrganization relevant to this Affiliation" "Contact details at the participatingOrganization relevant to this Affiliation."
* telecom ^requirements = "Sometimes a participating organization provides dedicated contacts to handle enquiries specifically for the role provided to the affiliated organization."
* endpoint 0..* Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Endpoint) "Technical endpoints providing access to services operated for this role" "Technical endpoints providing access to services operated for this role."