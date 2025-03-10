Extension: ChargeItemResponse
Id: ChargeItemResponse
Context: ChargeItem
* ^url = "https://fhir.kemkes.go.id/r4/StructureDefinition/chargeItemResponse"
* ^status = #draft
* ^date = "2024-05-07T16:08:37.130606+00:00"
* extension contains
    sequence 0..* and
    payor 0..* and
    identifier 0..* and
    coverage 0..* and
    status 0..* and
    unitPriceOverride 0..* and
    quantity 0..* and
    factorOverride 0..* and
    overrideReason 0..* and
    total 0..* and
    excess 0..*
* extension[sequence].value[x] only integer
* extension[payor].value[x] only Reference(Organization)
* extension[identifier].value[x] only id
* extension[coverage].value[x] only Reference(Coverage)
* extension[status].value[x] only CodeableConcept
* extension[unitPriceOverride].value[x] only Money
* extension[quantity].value[x] only Quantity
* extension[factorOverride].value[x] only decimal
* extension[overrideReason].value[x] only string
* extension[total].value[x] only Money
* extension[excess].value[x] only Money
* url = "https://fhir.kemkes.go.id/r4/StructureDefinition/chargeItemResponse" (exactly)