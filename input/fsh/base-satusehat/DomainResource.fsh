Resource: DomainResource
Parent: Resource
Id: DomainResource
Description: "A resource that includes narrative, extensions, and contained resources."
* ^meta.lastUpdated = "2019-10-31T22:29:23.356+00:00"
* ^date = "2023-05-12T03:37:57.4675266+00:00"
* ^publisher = "Health Level Seven International (FHIR Infrastructure)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/fiwg/index.cfm"
* obeys dom-2 and dom-4 and dom-3 and dom-6 and dom-5
* . ^short = "A resource with narrative, extensions, and contained resources"
* . ^definition = "A resource that includes narrative, extensions, and contained resources."
* text 0..1 Narrative "Text summary of the resource, for human interpretation" "A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it \"clinically safe\" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety."
* text ^comment = "Contained resources do not have narrative. Resources that are not contained SHOULD have a narrative. In some cases, a resource may only have text with little or no additional discrete data (as long as all minOccurs=1 elements are satisfied).  This may be necessary for data from legacy systems where information is captured as a \"text blob\" or where text is additionally entered raw or narrated and encoded information is added later."
* text ^alias[0] = "narrative"
* text ^alias[+] = "html"
* text ^alias[+] = "xhtml"
* text ^alias[+] = "display"
* contained 0..* Resource "Contained, inline Resources" "These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope."
* contained ^comment = "This should never be done when the content can be identified properly, as once identification is lost, it is extremely difficult (and context dependent) to restore it again. Contained resources may have profiles and tags In their meta elements, but SHALL NOT have security labels."
* contained ^alias[0] = "inline resources"
* contained ^alias[+] = "anonymous resources"
* contained ^alias[+] = "contained resources"
* extension 0..* Extension "Additional content defined by implementations" "May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.description = "Extensions are always sliced by (at least) url"
* extension ^slicing.rules = #open
* extension ^comment = "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone."
* extension ^alias[0] = "extensions"
* extension ^alias[+] = "user content"
* modifierExtension 0..* ?! Extension "Extensions that cannot be ignored" "May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.\n\nModifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself)."
* modifierExtension ^slicing.discriminator.type = #value
* modifierExtension ^slicing.discriminator.path = "url"
* modifierExtension ^slicing.description = "Extensions are always sliced by (at least) url"
* modifierExtension ^slicing.rules = #open
* modifierExtension ^comment = "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone."
* modifierExtension ^requirements = "Modifier extensions allow for extensions that *cannot* be safely ignored to be clearly distinguished from the vast majority of extensions which can be safely ignored.  This promotes interoperability by eliminating the need for implementers to prohibit the presence of extensions. For further information, see the [definition of modifier extensions](extensibility.html#modifierExtension)."
* modifierExtension ^alias[0] = "extensions"
* modifierExtension ^alias[+] = "user content"
* modifierExtension ^isModifierReason = "Modifier extensions are expected to modify the meaning or interpretation of the resource that contains them"