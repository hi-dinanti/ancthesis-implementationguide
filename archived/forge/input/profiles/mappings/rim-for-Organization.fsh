Mapping: rim-for-Organization
Id: rim
Title: "RIM Mapping"
Source: Organization
Target: "http://hl7.org/v3"
* -> "Organization(classCode=ORG, determinerCode=INST)"
* identifier -> ".scopes[Role](classCode=IDENT)"
* active -> ".status"
* type -> ".code"
* name -> ".name"
* alias -> ".name"
* telecom -> ".telecom"
* address -> ".address"
* partOf -> ".playedBy[classCode=Part].scoper"
* contact -> ".contactParty"
* contact.purpose -> "./type"
* contact.name -> "./name"
* contact.telecom -> "./telecom"
* contact.address -> "./addr"