Profile: ANCServiceRequest
Parent: SatuSehatServiceRequest
Id: ANCServiceRequest
Description: "A record of a request for service such as diagnostic investigations, treatments, or operations to be performed during prenatal visit."
* encounter 1..1 MS 
* encounter only Reference(ANCEncounter)