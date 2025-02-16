Mapping: rim-for-Person
Id: rim
Title: "RIM Mapping"
Source: Person
Target: "http://hl7.org/v3"
* -> "Person(classCode=\"PSN\" and determinerCode=\"INST\" and quantity=\"1\")"
* identifier -> ".plays:Role(classCode='IDENT').id"
* name -> "./name"
* telecom -> "./telecom"
* gender -> "player[classCode=PSN|ANM and determinerCode=INSTANCE]/administrativeGender"
* birthDate -> "./birthTime"
* address -> "./addr"
* photo -> "player[classCode=PSN|ANM and determinerCode=INSTANCE]/desc"
* managingOrganization -> "scoper"
* active -> "statusCode"
* link -> "outboundLink"
* link.target -> "id"
* link.assurance -> "priorityNumber?"