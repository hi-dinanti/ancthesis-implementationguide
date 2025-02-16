Resource: Patient
Id: anc-patient
Description: "Demographics and other administrative information about an individual receiving care or other health-related services. For antenatal care related service, patient gender is female."
* ^meta.lastUpdated = "2025-02-11T05:10:03.7379533+00:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Individuals"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #normative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[=].valueCode = #4.0.0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 5
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/Patient"
* ^date = "2022-02-02T03:24:29.0074533Z"
* ^publisher = "Health Level Seven International (Patient Administration)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pafm/index.cfm"
* ^purpose = "Tracking patient is the center of the healthcare process."
* ^type = "Patient"
* . ^short = "Information about an individual or animal receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual or animal receiving care or other health-related services."
* . ^alias = "SubjectOfCare Client Resident"
* extension[birthPlace] ^sliceName = "birthPlace"
* extension[birthPlace] ^type.code = "Extension"
* extension[birthPlace] ^type.profile = "https://fhir.kemkes.go.id/r4/StructureDefinition/patient-birthPlace"
* extension[birthPlace].value[x] undefined..undefined BackboneElement
* extension[birthPlace].value[x].use undefined..0 BackboneElement
* extension[birthPlace].value[x].type undefined..0 BackboneElement
* extension[birthPlace].value[x].text undefined..0 BackboneElement
* extension[birthPlace].value[x].period undefined..0 BackboneElement
* identifier 1..undefined SU Identifier "An identifier for this patient" "An identifier for this patient. At least one identifier, the IHS Number is mandatory."
* identifier ^requirements = "Patients are almost always assigned specific numerical identifiers."
* identifier.use undefined..undefined BackboneElement "The purpose of this identifier. For IHS Number must equal \"official\"."
* identifier.type undefined..undefined BackboneElement "A coded type for the identifier that can be used to determine which identifier to use for a specific purpose. For IHS Number must equal \"IHS\"."
* identifier.system 1..undefined BackboneElement "For IHS Number, \"system\" must equal to \"https://fhir.kemkes.go.id/id/ihs-number\"\r\nFor NIK, \"system\" must equal to \"https://fhir.kemkes.go.id/id/nik\""
* identifier.value 1..undefined BackboneElement
* active undefined..1 ?! SU boolean "Whether this patient's record is in active use" "Whether this patient record is in active use. \nMany systems use this property to mark as non-current patients, such as those that have not been seen for a period of time based on an organization's business rules.\n\nIt is often used to filter patient lists to exclude inactive patients\n\nDeceased patients may also be marked as inactive for the same reasons, but may be active for some time after death."
* active ^comment = "If a record is inactive, and linked to an active record, then future patient/record updates should occur on the other patient."
* active ^requirements = "Need to be able to mark a patient record as not to be used because it was created in error."
* active ^meaningWhenMissing = "This resource is generally assumed to be active if no value is provided for the active element"
* active ^isModifierReason = "This element is labelled as a modifier because it is a status element that can indicate that a record should not be treated as valid"
* name undefined..undefined SU HumanName "A name associated with the patient" "A name associated with the individual."
* name ^comment = "A patient may have multiple names with different uses or applicable periods. For animals, the name is a \"HumanName\" in the sense that is assigned and used by humans and has the same patterns."
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name."
* name.text 1..undefined BackboneElement
* telecom undefined..undefined SU ContactPoint "A contact detail for the individual" "A contact detail (e.g. a telephone number or an email address) by which the individual may be contacted."
* telecom ^comment = "A Patient may have multiple ways to be contacted with different uses or applicable periods.  May need to have options for contacting the person urgently and also to help with identification. The address might not go directly to the individual, but may reach another party that is able to proxy for the patient (i.e. home phone, or pet owner's phone)."
* telecom ^requirements = "People have (primary) ways to contact them in some way such as phone, email."
* gender undefined..1 SU code "female" "Administrative Gender - the gender that the patient is considered to have for administration and record keeping purposes."
* gender from http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1 (required)
* gender = #female (exactly)
* gender ^comment = "The gender might not match the biological sex as determined by genetics or the individual's preferred identification. Note that for both humans and particularly animals, there are other legitimate possibilities than male and female, though the vast majority of systems and contexts only support male and female.  Systems providing decision support or enforcing business rules should ideally do this on the basis of Observations dealing with the specific sex or gender aspect of interest (anatomical, chromosomal, social, etc.)  However, because these observations are infrequently recorded, defaulting to the administrative gender is common practice.  Where such defaulting occurs, rule enforcement should allow for the variation between administrative and biological, chromosomal and other gender aspects.  However, due to the local regulation in Indonesia, antenatal care related services are only provided for female. See the Patient Gender and Sex section for additional information about communicating patient gender and sex."
* gender ^requirements = "Needed for identification of the individual, in combination with (at least) name and birth date."
* gender ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* gender ^binding.extension[=].valueString = "AdministrativeGender"
* gender ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* gender ^binding.extension[=].valueBoolean = true
* gender ^binding.description = "The gender of a person used for administrative purposes."
* birthDate undefined..1 SU date "The date of birth for the individual" "The date of birth for the individual."
* birthDate ^comment = "At least an estimated year should be provided as a guess if the real DOB is unknown  There is a standard extension \"patient-birthTime\" available that should be used where Time is required (such as in maternity/infant care systems)."
* birthDate ^requirements = "Age of the individual drives many clinical processes."
* birthDate.extension[birthTime] ^sliceName = "birthTime"
* birthDate.extension[birthTime] ^type.code = "Extension"
* birthDate.extension[birthTime] ^type.profile = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
* birthDate.extension[birthTime].value[x] undefined..undefined BackboneElement "Datetime of birth" "The time of day that the patient was born. This includes the date to ensure that the timezone information can be communicated effectively."
* birthDate.extension[birthTime].value[x] ^comment = "Datetime of birth."
* deceased[x] undefined..1 ?! SU boolean or dateTime "Indicates if the individual is deceased or not" "Indicates if the individual is deceased or not."
* deceased[x] ^comment = "If there's no value in the instance, it means there is no statement on whether or not the individual is deceased. Most systems will interpret the absence of a value as a sign of the person being alive."
* deceased[x] ^requirements = "The fact that a patient is deceased influences the clinical process. Also, in human communication and relation management it is necessary to know whether the person is alive."
* deceased[x] ^isModifierReason = "This element is labeled as a modifier because once a patient is marked as deceased, the actions that are appropriate to perform on the patient may be significantly different."
* address undefined..undefined SU https://fhir.kemkes.go.id/r4/StructureDefinition/Address "An address for the individual" "An address for the individual."
* address ^comment = "Patient may have multiple addresses with different uses or applicable periods."
* address ^requirements = "May need to keep track of patient addresses for contacting, billing or reporting requirements and also to help with identification."
* address.extension[administrativeCode] ^sliceName = "administrativeCode"
* address.extension[administrativeCode] ^definition = "The regional administrative code of the patient's address, represented in six levels: province, city/regency, district, village, rt and rw."
* address.extension[geolocation] ^sliceName = "geolocation"
* address.extension[geolocation] ^definition = "The absolute geographic location of the patient's address, expressed using the WGS84 datum (This is the same co-ordinate system used in KML)."
* address.extension[geolocation].extension 2..undefined BackboneElement
* address.extension[geolocation].extension[latitude] ^sliceName = "latitude"
* address.extension[geolocation].extension[latitude] ^definition = "Latitude. The value domain and the interpretation are the same as for the text of the latitude element in KM."
* address.extension[geolocation].extension[longitude] ^sliceName = "longitude"
* address.extension[geolocation].extension[longitude] ^definition = "Longitude. The value domain and the interpretation are the same as for the text of the longitude element in KML."
* maritalStatus undefined..1 CodeableConcept "Marital (civil) status of a patient" "This field contains a patient's most recent marital (civil) status."
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (extensible)
* maritalStatus ^requirements = "Most, if not all systems capture it."
* maritalStatus ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* maritalStatus ^binding.extension[=].valueString = "MaritalStatus"
* maritalStatus ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* maritalStatus ^binding.extension[=].valueBoolean = true
* maritalStatus ^binding.description = "The domestic partnership status of a person."
* multipleBirth[x] undefined..1 boolean or integer "Whether patient is part of a multiple birth" "Indicates whether the patient is part of a multiple (boolean) or indicates the actual birth order (integer)."
* multipleBirth[x] ^comment = "Where the valueInteger is provided, the number is the birth number in the sequence. E.g. The middle birth in triplets would be valueInteger=2 and the third born would have valueInteger=3 If a boolean value was provided for this triplets example, then all 3 patient records would have valueBoolean=true (the ordering is not indicated)."
* multipleBirth[x] ^requirements = "For disambiguation of multiple-birth children, especially relevant where the care provider doesn't meet the patient, such as labs."
* photo undefined..undefined Attachment "Image of the patient" "Image of the patient."
* photo ^comment = "Guidelines:\n* Use id photos, not clinical photos.\n* Limit dimensions to thumbnail.\n* Keep byte count low to ease resource updates."
* photo ^requirements = "Many EHR systems have the capability to capture an image of the patient. Fits with newer social media usage too."
* contact undefined..undefined BackboneElement "A contact party (e.g. guardian, partner, friend) for the patient" "A contact party (e.g. guardian, partner, friend) for the patient."
* contact obeys pat-1
* contact ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* contact ^extension[=].valueString = "Contact"
* contact ^comment = "Contact covers all kinds of contact parties: family members, business contacts, guardians, caregivers. Not applicable to register pedigree and family ties beyond use of having contact."
* contact ^requirements = "Need to track people you can contact about the patient."
* contact.relationship undefined..undefined CodeableConcept "The kind of relationship" "The nature of the relationship between the patient and the contact person."
* contact.relationship from http://hl7.org/fhir/ValueSet/patient-contactrelationship (extensible)
* contact.relationship ^requirements = "Used to determine which contact person is the most relevant to approach, depending on circumstances."
* contact.relationship ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* contact.relationship ^binding.extension[=].valueString = "ContactRelationship"
* contact.relationship ^binding.description = "The nature of the relationship between a patient and a contact person for that patient."
* contact.name undefined..1 HumanName "A name associated with the contact person" "A name associated with the contact person."
* contact.name ^requirements = "Contact persons need to be identified by name, but it is uncommon to need details about multiple other names for that contact person."
* contact.telecom undefined..undefined ContactPoint "A contact detail for the person" "A contact detail for the person, e.g. a telephone number or an email address."
* contact.telecom ^comment = "Contact may have multiple ways to be contacted with different uses or applicable periods.  May need to have options for contacting the person urgently, and also to help with identification."
* contact.telecom ^requirements = "People have (primary) ways to contact them in some way such as phone, email."
* contact.address undefined..1 Address "Address for the contact person" "Address for the contact person."
* contact.address ^requirements = "Need to keep track where the contact person can be contacted per postal mail or visited."
* contact.gender undefined..1 code "male | female | other | unknown" "Administrative Gender - the gender that the contact person is considered to have for administration and record keeping purposes."
* contact.gender from http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1 (required)
* contact.gender ^requirements = "Needed to address the person correctly."
* contact.gender ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* contact.gender ^binding.extension[=].valueString = "AdministrativeGender"
* contact.gender ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* contact.gender ^binding.extension[=].valueBoolean = true
* contact.gender ^binding.description = "The gender of a person used for administrative purposes."
* contact.organization undefined..1 Reference(http://hl7.org/fhir/StructureDefinition/Organization) "Organization that is associated with the contact" "Organization on behalf of which the contact is acting or for which the contact is working."
* contact.organization ^requirements = "For guardians or business related contacts, the organization is relevant."
* contact.organization ^condition = "pat-1"
* contact.period undefined..1 Period "The period during which this contact person or organization is valid to be contacted relating to this patient" "The period during which this contact person or organization is valid to be contacted relating to this patient."
* communication undefined..undefined BackboneElement "A language which may be used to communicate with the patient about his or her health" "A language which may be used to communicate with the patient about his or her health."
* communication ^comment = "If no language is specified, this *implies* that the default local language is spoken.  If you need to convey proficiency for multiple modes, then you need multiple Patient.Communication associations.   For animals, language is not a relevant field, and should be absent from the instance. If the Patient does not speak the default local language, then the Interpreter Required Standard can be used to explicitly declare that an interpreter is required."
* communication ^requirements = "If a patient does not speak the local language, interpreters may be required, so languages spoken and proficiency are important things to keep track of both for patient and other persons of interest."
* communication.language 1..1 CodeableConcept "The language which can be used to communicate with the patient about his or her health" "The ISO-639-1 alpha 2 code in lower case for the language, optionally followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in upper case; e.g. \"en\" for English, or \"en-US\" for American English versus \"en-EN\" for England English."
* communication.language from http://hl7.org/fhir/ValueSet/languages (preferred)
* communication.language ^comment = "The structure aa-BB with this exact casing is one the most widely used notations for locale. However not all systems actually code this but instead have it as free text. Hence CodeableConcept instead of code as the data type."
* communication.language ^requirements = "Most systems in multilingual countries will want to convey language. Not all systems actually need the regional dialect."
* communication.language ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
* communication.language ^binding.extension[=].valueCanonical = "http://hl7.org/fhir/ValueSet/all-languages"
* communication.language ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* communication.language ^binding.extension[=].valueString = "Language"
* communication.language ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* communication.language ^binding.extension[=].valueBoolean = true
* communication.language ^binding.description = "A human language."
* communication.preferred undefined..1 boolean "Language preference indicator" "Indicates whether or not the patient prefers this language (over other languages he masters up a certain level)."
* communication.preferred ^comment = "This language is specifically identified for communicating healthcare information."
* communication.preferred ^requirements = "People that master multiple languages up to certain level may prefer one or more, i.e. feel more confident in communicating in a particular language making other languages sort of a fall back method."
* generalPractitioner undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization or https://fhir.kemkes.go.id/r4/StructureDefinition/Practitioner or https://fhir.kemkes.go.id/r4/StructureDefinition/PractitionerRole) "Patient's nominated primary care provider" "Patient's nominated care provider."
* generalPractitioner ^comment = "This may be the primary care provider (in a GP context), or it may be a patient nominated care manager in a community/disability setting, or even organization that will provide people to perform the care provider roles.  It is not to be used to record Care Teams, these should be in a CareTeam resource that may be linked to the CarePlan or EpisodeOfCare resources.\nMultiple GPs may be recorded against the patient for various reasons, such as a student that has his home GP listed along with the GP at university during the school semesters, or a \"fly-in/fly-out\" worker that has the onsite GP also included with his home GP to remain aware of medical issues.\n\nJurisdictions may decide that they can profile this down to 1 if desired, or 1 per type."
* generalPractitioner ^alias = "careProvider"
* managingOrganization undefined..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Organization) "Organization that is the custodian of the patient record" "Organization that is the custodian of the patient record."
* managingOrganization ^comment = "There is only one managing organization for a specific patient record. Other organizations will have their own Patient record, and may use the Link property to join the records together (or a Person resource which can include confidence ratings for the association)."
* managingOrganization ^requirements = "Need to know who recognizes this patient record, manages and updates it."
* link undefined..undefined ?! SU BackboneElement "Link to another patient resource that concerns the same actual person" "Link to another patient resource that concerns the same actual patient."
* link ^comment = "There is no assumption that linked patient records have mutual links."
* link ^requirements = "There are multiple use cases:   \n\n* Duplicate patient records due to the clerical errors associated with the difficulties of identifying humans consistently, and \n* Distribution of patient information across multiple servers."
* link ^isModifierReason = "This element is labeled as a modifier because it might not be the main Patient resource, and the referenced patient should be used instead of this Patient record. This is when the link.type value is 'replaced-by'"
* link.other 1..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/RelatedPerson) "The other patient or related person resource that the link refers to" "The other patient resource that the link refers to."
* link.other ^comment = "Referencing a RelatedPerson here removes the need to use a Person record to associate a Patient and RelatedPerson as the same individual."
* link.other ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
* link.other ^type.extension.valueBoolean = false
* link.type 1..1 SU code "replaced-by | replaces | refer | seealso" "The type of link between this patient resource and another patient resource."
* link.type from http://hl7.org/fhir/ValueSet/link-type|4.0.1 (required)
* link.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* link.type ^binding.extension[=].valueString = "LinkType"
* link.type ^binding.description = "The type of link between this patient resource and another patient resource."