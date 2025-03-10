Mapping: rim-for-ClaimResponse
Id: rim
Title: "RIM Mapping"
Source: ClaimResponse
Target: "http://hl7.org/v3"
* addItem.modifier -> "24.C, 24.D mods"
* addItem.programCode -> "24.H"
* addItem.serviced[x] -> "24.A"
* addItem.location[x] -> "24.B"
* addItem.quantity -> "24.G"
* addItem.net -> "24.F"
* addItem.detail.modifier -> "24.C, 24.D mods"
* addItem.detail.quantity -> "24.G"
* addItem.detail.net -> "24.F"
* addItem.detail.subDetail.modifier -> "24.C, 24.D mods"
* addItem.detail.subDetail.quantity -> "24.G"
* addItem.detail.subDetail.net -> "24.F"
* insurance -> "Coverage"