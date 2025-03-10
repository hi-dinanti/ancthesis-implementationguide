Mapping: rim-for-OrganizationAffiliation
Id: rim
Title: "RIM Mapping"
Source: OrganizationAffiliation
Target: "http://hl7.org/v3"
* -> "Role"
* identifier -> ".id"
* active -> ".statusCode"
* period -> ".performance[@typeCode <= 'PPRF'].ActDefinitionOrEvent.effectiveTime"
* organization -> ".scoper"
* participatingOrganization -> ".player"
* code -> ".code"
* specialty -> ".player.HealthCareProvider[@classCode = 'PROV'].code"
* location -> ".performance.ActDefinitionOrEvent.ServiceDeliveryLocation[@classCode = 'SDLOC']"
* healthcareService -> ".player.QualifiedEntity[@classCode = 'QUAL'].code"
* telecom -> ".telecom"
* endpoint -> "n/a"