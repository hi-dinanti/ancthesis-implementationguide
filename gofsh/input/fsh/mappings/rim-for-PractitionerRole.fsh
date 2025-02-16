Mapping: rim-for-PractitionerRole
Id: rim
Title: "RIM Mapping"
Source: PractitionerRole
Target: "http://hl7.org/v3"
* -> "Role"
* identifier -> ".id"
* active -> ".statusCode"
* period -> ".performance[@typeCode <= 'PPRF'].ActDefinitionOrEvent.effectiveTime"
* practitioner -> ".player"
* organization -> ".scoper"
* code -> ".code"
* specialty -> ".player.HealthCareProvider[@classCode = 'PROV'].code"
* location -> ".performance.ActDefinitionOrEvent.ServiceDeliveryLocation[@classCode = 'SDLOC']"
* healthcareService -> ".player.QualifiedEntity[@classCode = 'QUAL'].code"
* telecom -> ".telecom"
* availableTime -> ".effectiveTime"
* availableTime.daysOfWeek -> ".effectiveTime"
* availableTime.allDay -> ".effectiveTime"
* availableTime.availableStartTime -> ".effectiveTime"
* availableTime.availableEndTime -> ".effectiveTime"
* notAvailable -> ".effectiveTime"
* notAvailable.during -> ".effectiveTime"
* availabilityExceptions -> ".effectiveTime"