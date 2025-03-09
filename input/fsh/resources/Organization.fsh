Resource: Organization
Id: Organization
Description: "A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action.  Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc."
* ^meta.lastUpdated = "2025-02-11T05:37:17.0007956+00:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Entities"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #business
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/Organization"
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "Health Level Seven International (Patient Administration)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pafm/index.cfm"
* obeys org-1
* . ^short = "A grouping of people or organizations with a common purpose"
* . ^definition = "A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action.  Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc."
* identifier undefined..undefined SU Identifier "Identifies this organization  across multiple systems" "Identifier for the organization that is used to identify the organization across multiple disparate systems."
* identifier ^requirements = "Organizations are known by a variety of ids. Some institutions maintain several, and most collect identifiers for exchange with other organizations concerning the organization."
* identifier ^condition = "org-1"
* active undefined..1 ?! SU boolean "Whether the organization's record is still in active use" "Whether the organization's record is still in active use."
* active ^comment = "This active flag is not intended to be used to mark an organization as temporarily closed or under construction. Instead the Location(s) within the Organization should have the suspended status. If further details of the reason for the suspension are required, then an extension on this element should be used.\n\nThis element is labeled as a modifier because it may be used to mark that the resource was created in error."
* active ^requirements = "Need a flag to indicate a record is no longer to be used and should generally be hidden for the user in the UI."
* active ^meaningWhenMissing = "This resource is generally assumed to be active if no value is provided for the active element"
* active ^isModifierReason = "This element is labelled as a modifier because it is a status element that can indicate that a record should not be treated as valid"
* type undefined..undefined SU CodeableConcept "Kind of organization" "The kind(s) of organization that this is."
* type from http://hl7.org/fhir/ValueSet/organization-type (example)
* type ^comment = "Organizations can be corporations, wards, sections, clinical teams, government departments, etc. Note that code is generally a classifier of the type of organization; in many applications, codes are used to identity a particular organization (say, ward) as opposed to another of the same type - these are identifiers, not codes\n\nWhen considering if multiple types are appropriate, you should evaluate if child organizations would be a more appropriate use of the concept, as different types likely are in different sub-areas of the organization. This is most likely to be used where type values have orthogonal values, such as a religious, academic and medical center.\n\nWe expect that some jurisdictions will profile this optionality to be a single cardinality."
* type ^requirements = "Need to be able to track the kind of organization that this is - different organization types have different uses."
* type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension.valueString = "OrganizationType"
* type ^binding.description = "Used to categorize the organization."
* name undefined..1 SU string "Name used for the organization" "A name associated with the organization."
* name ^comment = "If the name of an organization changes, consider putting the old name in the alias column so that it can still be located through searches."
* name ^requirements = "Need to use the name as the label of the organization."
* name ^condition = "org-1"
* alias undefined..undefined string "A list of alternate names that the organization is known as, or was known as in the past" "A list of alternate names that the organization is known as, or was known as in the past."
* alias ^comment = "There are no dates associated with the alias/historic names, as this is not intended to track when names were used, but to assist in searching so that older names can still result in identifying the organization."
* alias ^requirements = "Over time locations and organizations go through many changes and can be known by different names.\n\nFor searching knowing previous names that the organization was known by can be very useful."
* telecom undefined..undefined ContactPoint "A contact detail for the organization" "A contact detail for the organization."
* telecom obeys org-3
* telecom ^comment = "The use code 'home' is not to be used. Note that these contacts are not the contact details of people who are employed by or represent the organization, but official contacts for the organization itself."
* telecom ^requirements = "Human contact for the organization."
* telecom ^condition = "org-3"
* address undefined..undefined https://fhir.kemkes.go.id/r4/StructureDefinition/Address "An address for the organization" "An address for the organization."
* address obeys org-2
* address ^comment = "Organization may have multiple addresses with different uses or applicable periods. The use code 'home' is not to be used."
* address ^requirements = "May need to keep track of the organization's addresses for contacting, billing or reporting requirements."
* address ^condition = "org-2"
* address.extension[geolocation] ^sliceName = "geolocation"
* address.extension[geolocation].extension 2..undefined BackboneElement
* partOf undefined..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Organization) "The organization of which this organization forms a part" "The organization of which this organization forms a part."
* partOf ^requirements = "Need to be able to track the hierarchy of organizations within an organization."
* partOf ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
* partOf ^type.extension.valueBoolean = true
* contact undefined..undefined BackboneElement "Contact for the organization for a certain purpose" "Contact for the organization for a certain purpose."
* contact ^comment = "Where multiple contacts for the same purpose are provided there is a standard extension that can be used to determine which one is the preferred contact to use."
* contact ^requirements = "Need to keep track of assigned contact points within bigger organization."
* contact.purpose undefined..1 CodeableConcept "The type of contact" "Indicates a purpose for which the contact can be reached."
* contact.purpose from http://hl7.org/fhir/ValueSet/contactentity-type (extensible)
* contact.purpose ^requirements = "Need to distinguish between multiple contact persons."
* contact.purpose ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* contact.purpose ^binding.extension.valueString = "ContactPartyType"
* contact.purpose ^binding.description = "The purpose for which you would contact a contact party."
* contact.name undefined..1 HumanName "A name associated with the contact" "A name associated with the contact."
* contact.name ^requirements = "Need to be able to track the person by name."
* contact.telecom undefined..undefined ContactPoint "Contact details (telephone, email, etc.)  for a contact" "A contact detail (e.g. a telephone number or an email address) by which the party may be contacted."
* contact.telecom ^requirements = "People have (primary) ways to contact them in some way such as phone, email."
* contact.address undefined..1 Address "Visiting or postal addresses for the contact" "Visiting or postal addresses for the contact."
* contact.address ^requirements = "May need to keep track of a contact party's address for contacting, billing or reporting requirements."
* endpoint undefined..undefined Reference(http://hl7.org/fhir/StructureDefinition/Endpoint) "Technical endpoints providing access to services operated for the organization" "Technical endpoints providing access to services operated for the organization."
* endpoint ^requirements = "Organizations have multiple systems that provide various services and need to be able to define the technical connection details for how to connect to them, and for what purpose."