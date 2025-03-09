Mapping: w3c.prov-for-Provenance
Id: w3c.prov
Title: "W3C PROV"
Source: Provenance
Target: "http://www.w3.org/ns/prov"
* -> "Activity"
* target -> "Entity Created/Updated"
* occurred[x] -> "Activity.startTime & Activity.endTime"
* recorded -> "Activity.when"
* location -> "Activity.location"
* reason -> "Activity.Activity"
* activity -> "Activity.Activity"
* agent -> "Agent"
* agent.type -> "Agent.Attribution"
* entity -> "Entity"
* entity.role -> "Entity.role"
* entity.what -> "Entity.Identity"