Mapping: rim-for-Medication
Id: rim
Title: "RIM Mapping"
Source: Medication
Target: "http://hl7.org/v3"
* -> "ManufacturedProduct[classCode=ADMM]"
* identifier -> ".id"
* code -> ".code"
* status -> ".statusCode"
* manufacturer -> ".player.scopingRole[typeCode=MANU].scoper"
* form -> ".formCode"
* amount -> ".quantity"
* ingredient -> ".scopesRole[typeCode=INGR]"
* ingredient.item[x] -> ".player"
* ingredient.isActive -> "NA"
* ingredient.strength -> ".quantity"
* batch -> ".player[classCode=CONT]"
* batch.lotNumber -> ".id"
* batch.expirationDate -> "participation[typeCode=CSM].role[classCode=INST].scopedRole.scoper[classCode=MMAT].expirationTime"