Invariant: ctm-1
Description: "CareTeam.participant.onBehalfOf can only be populated when CareTeam.participant.member is a Practitioner"
* severity = #error
* expression = "onBehalfOf.exists() implies (member.resolve().iif(empty(), true, ofType(Practitioner).exists()))"
* xpath = "starts-with(f:member/f:reference/@value, 'Practitioner/') or contains(f:member/f:reference/@value, '/Practitioner/') or exists(ancestor::*/f:contains/f:Practitioner/f:id[@value=substring-after(current()/f:member/f:reference/@value, '#')]) or not(exists(f:onBehalfOf))"
* source = "http://hl7.org/fhir/StructureDefinition/CareTeam"