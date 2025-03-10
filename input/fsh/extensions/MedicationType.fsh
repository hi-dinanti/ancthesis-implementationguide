Extension: MedicationType
Parent: $Extension
Id: MedicationType
Context: Medication
* ^date = "2023-05-12T03:38:24.117026+00:00"
* . 1..1
* value[x] 1..
* value[x] only CodeableConcept
* value[x] ^short = "Type of medication"
* value[x] ^definition = "Value of extension - must be one of non-compound|compound|compound-dtd"