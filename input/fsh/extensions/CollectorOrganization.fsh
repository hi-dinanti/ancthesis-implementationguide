Extension: CollectorOrganization
Parent: $Extension
Id: CollectorOrganization
Context: Specimen.collection
* ^status = #draft
* ^date = "2023-05-12T03:38:24.117026+00:00"
* . ..1
* . ^short = "Specimen Collector Organization information"
* . ^definition = "Specimen.collection.collectorOrganization information for Specimen referral process"
* . ^mustSupport = false
* value[x] only Reference(Organization)
* value[x] ^short = "Organization ID reference whom collect Specimen"
* value[x] ^definition = "Organization ID from the Specimen collector (referrer)"