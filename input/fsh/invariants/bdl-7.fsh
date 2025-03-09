Invariant: bdl-7
Description: "FullUrl must be unique in a bundle, or else entries with the same fullUrl must have different meta.versionId (except in history bundles)"
* severity = #error
* expression = "(type = 'history') or entry.where(fullUrl.exists()).select(fullUrl&resource.meta.versionId).isDistinct()"
* xpath = "(f:type/@value = 'history') or (count(for $entry in f:entry[f:resource] return $entry[count(parent::f:Bundle/f:entry[f:fullUrl/@value=$entry/f:fullUrl/@value and ((not(f:resource/*/f:meta/f:versionId/@value) and not($entry/f:resource/*/f:meta/f:versionId/@value)) or f:resource/*/f:meta/f:versionId/@value=$entry/f:resource/*/f:meta/f:versionId/@value)])!=1])=0)"
* source = "http://hl7.org/fhir/StructureDefinition/Bundle"