Extension: ServiceClass
Id: ServiceClass
Context: Encounter.location
* ^status = #draft
* ^date = "2023-05-22T04:36:32.4494695+00:00"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    value 0..1 and
    upgradeClassIndicator 0..1
* extension[value].value[x] only CodeableConcept
* extension[upgradeClassIndicator].value[x] only CodeableConcept
* value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage