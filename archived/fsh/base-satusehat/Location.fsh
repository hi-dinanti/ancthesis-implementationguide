Resource: Location
Id: Location
Description: "Details and position information for a physical place where services are provided and resources and participants may be stored, found, contained, or accommodated."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2023-05-30T10:10:45.9858707+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Entities"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #business
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^date = "2023-05-30T10:14:25.520085+00:00"
* ^publisher = "Health Level Seven International (Patient Administration)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pafm/index.cfm"
* . ^short = "Details and position information for a physical place"
* . ^definition = "Details and position information for a physical place where services are provided and resources and participants may be stored, found, contained, or accommodated."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains serviceClass 0..1
* extension[serviceClass] ^type.code = "Extension"
* extension[serviceClass] ^type.profile = "https://fhir.kemkes.go.id/r4/StructureDefinition/LocationServiceClass"
* extension[serviceClass] ^isModifier = false
* identifier undefined..undefined SU Identifier "Unique code or number identifying the location to its users" "Unique code or number identifying the location to its users."
* identifier ^requirements = "Organization label locations in registries, need to keep track of those."
* status undefined..1 ?! SU code "active | suspended | inactive" "The status property covers the general availability of the resource, not the current value which may be covered by the operationStatus, or by a schedule/slots if they are configured for the location."
* status from http://hl7.org/fhir/ValueSet/location-status|4.0.1 (required)
* status ^isModifierReason = "This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid"
* status ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension.valueString = "LocationStatus"
* status ^binding.description = "Indicates whether the location is still in use."
* operationalStatus undefined..1 SU Coding "The operational status of the location (typically only for a bed/room)" "The operational status covers operation values most relevant to beds (but can also apply to rooms/units/chairs/etc. such as an isolation unit/dialysis chair). This typically covers concepts such as contamination, housekeeping, and other activities like maintenance."
* operationalStatus from http://terminology.hl7.org/ValueSet/v2-0116 (preferred)
* operationalStatus ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* operationalStatus ^binding.extension.valueString = "OperationalStatus"
* operationalStatus ^binding.description = "The operational status if the location (where typically a bed/room)."
* name undefined..1 SU string "Name of the location as used by humans" "Name of the location as used by humans. Does not need to be unique."
* name ^comment = "If the name of a location changes, consider putting the old name in the alias column so that it can still be located through searches."
* alias undefined..undefined string "A list of alternate names that the location is known as, or was known as, in the past" "A list of alternate names that the location is known as, or was known as, in the past."
* alias ^comment = "There are no dates associated with the alias/historic names, as this is not intended to track when names were used, but to assist in searching so that older names can still result in identifying the location."
* alias ^requirements = "Over time locations and organizations go through many changes and can be known by different names.\n\nFor searching knowing previous names that the location was known by can be very useful."
* description undefined..1 SU string "Additional details about the location that could be displayed as further information to identify the location beyond its name" "Description of the Location, which helps in finding or referencing the place."
* description ^requirements = "Humans need additional information to verify a correct location has been identified."
* mode undefined..1 SU code "instance | kind" "Indicates whether a resource instance represents a specific location or a class of locations."
* mode from http://hl7.org/fhir/ValueSet/location-mode|4.0.1 (required)
* mode ^comment = "This is labeled as a modifier because whether or not the location is a class of locations changes how it can be used and understood."
* mode ^requirements = "When using a Location resource for scheduling or orders, we need to be able to refer to a class of Locations instead of a specific Location."
* mode ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* mode ^binding.extension.valueString = "LocationMode"
* mode ^binding.description = "Indicates whether a resource instance represents a specific location or a class of locations."
* type undefined..undefined SU CodeableConcept "Type of function performed" "Indicates the type of function performed at the location."
* type from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType (extensible)
* type ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension.valueString = "LocationType"
* type ^binding.description = "Indicates the type of function performed at the location."
* telecom undefined..undefined ContactPoint "Contact details of the location" "The contact details of communication devices available at the location. This can include phone numbers, fax numbers, mobile numbers, email addresses and web sites."
* address undefined..1 https://fhir.kemkes.go.id/r4/StructureDefinition/Address "Physical location" "Physical location."
* address ^comment = "Additional addresses should be recorded using another instance of the Location resource, or via the Organization."
* address ^requirements = "If locations can be visited, we need to keep track of their address."
* physicalType undefined..1 SU CodeableConcept "Physical form of the location" "Physical form of the location, e.g. building, room, vehicle, road."
* physicalType from http://hl7.org/fhir/ValueSet/location-physical-type (example)
* physicalType ^requirements = "For purposes of showing relevant locations in queries, we need to categorize locations."
* physicalType ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* physicalType ^binding.extension.valueString = "PhysicalType"
* physicalType ^binding.description = "Physical form of the location."
* position undefined..1 BackboneElement "The absolute geographic location" "The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system used in KML)."
* position ^requirements = "For mobile applications and automated route-finding knowing the exact location of the Location is required."
* position.longitude 1..1 decimal "Longitude with WGS84 datum" "Longitude. The value domain and the interpretation are the same as for the text of the longitude element in KML (see notes below)."
* position.latitude 1..1 decimal "Latitude with WGS84 datum" "Latitude. The value domain and the interpretation are the same as for the text of the latitude element in KML (see notes below)."
* position.altitude undefined..1 decimal "Altitude with WGS84 datum" "Altitude. The value domain and the interpretation are the same as for the text of the altitude element in KML (see notes below)."
* managingOrganization undefined..1 SU Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Organization) "Organization responsible for provisioning and upkeep" "The organization responsible for the provisioning and upkeep of the location."
* managingOrganization ^comment = "This can also be used as the part of the organization hierarchy where this location provides services. These services can be defined through the HealthcareService resource."
* managingOrganization ^requirements = "Need to know who manages the location."
* partOf undefined..1 Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Location) "Another Location this one is physically a part of" "Another Location of which this Location is physically a part of."
* partOf ^requirements = "For purposes of location, display and identification, knowing which locations are located within other locations is important."
* partOf ^type.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-hierarchy"
* partOf ^type.extension.valueBoolean = true
* hoursOfOperation undefined..undefined BackboneElement "What days/times during a week is this location usually open" "What days/times during a week is this location usually open."
* hoursOfOperation ^comment = "This type of information is commonly found published in directories and on websites informing customers when the facility is available.\n\nSpecific services within the location may have their own hours which could be shorter (or longer) than the locations hours."
* hoursOfOperation.daysOfWeek undefined..undefined code "mon | tue | wed | thu | fri | sat | sun" "Indicates which days of the week are available between the start and end Times."
* hoursOfOperation.daysOfWeek from http://hl7.org/fhir/ValueSet/days-of-week|4.0.1 (required)
* hoursOfOperation.daysOfWeek ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* hoursOfOperation.daysOfWeek ^binding.extension.valueString = "DaysOfWeek"
* hoursOfOperation.daysOfWeek ^binding.description = "The days of the week."
* hoursOfOperation.allDay undefined..1 boolean "The Location is open all day" "The Location is open all day."
* hoursOfOperation.openingTime undefined..1 time "Time that the Location opens" "Time that the Location opens."
* hoursOfOperation.closingTime undefined..1 time "Time that the Location closes" "Time that the Location closes."
* availabilityExceptions undefined..1 string "Description of availability exceptions" "A description of when the locations opening ours are different to normal, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as detailed in the opening hours Times."
* endpoint undefined..undefined Reference(https://fhir.kemkes.go.id/r4/StructureDefinition/Endpoint) "Technical endpoints providing access to services operated for the location" "Technical endpoints providing access to services operated for the location."
* endpoint ^requirements = "Organizations may have different systems at different locations that provide various services and need to be able to define the technical connection details for how to connect to them, and for what purpose."