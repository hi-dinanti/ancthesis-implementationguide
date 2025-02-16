Mapping: v2-for-Medication
Id: v2
Title: "HL7 v2 Mapping"
Source: Medication
Target: "http://hl7.org/v2"
* code -> "RXO-1.1-Requested Give Code.code / RXE-2.1-Give Code.code / RXD-2.1-Dispense/Give Code.code / RXG-4.1-Give Code.code /RXA-5.1-Administered Code.code / RXC-2.1 Component Code"
* manufacturer -> "RXD-20-Substance Manufacturer Name / RXG-21-Substance Manufacturer Name / RXA-17-Substance Manufacturer Name"
* form -> "RXO-5-Requested Dosage Form / RXE-6-Give Dosage Form / RXD-6-Actual Dosage Form / RXG-8-Give Dosage Form / RXA-8-Administered Dosage Form"
* ingredient.item[x] -> "RXC-2-Component Code  if medication: RXO-1-Requested Give Code / RXE-2-Give Code / RXD-2-Dispense/Give Code / RXG-4-Give Code / RXA-5-Administered Code"
* ingredient.strength -> "RXC-3-Component Amount & RXC-4-Component Units  if medication: RXO-2-Requested Give Amount - Minimum & RXO-4-Requested Give Units / RXO-3-Requested Give Amount - Maximum & RXO-4-Requested Give Units / RXO-11-Requested Dispense Amount & RXO-12-Requested Dispense Units / RXE-3-Give Amount - Minimum & RXE-5-Give Units / RXE-4-Give Amount - Maximum & RXE-5-Give Units / RXE-10-Dispense Amount & RXE-10-Dispense Units"
* batch.lotNumber -> "RXA-15 Substance Lot Number / RXG-19 Substance Lot Number"
* batch.expirationDate -> "RXA-16 Substance Expiration Date / RXG-20 Substance Expiration Date"