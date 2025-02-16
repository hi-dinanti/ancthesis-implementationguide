Mapping: v2-for-MedicationRequest
Id: v2
Title: "HL7 v2 Mapping"
Source: MedicationRequest
Target: "http://hl7.org/v2"
* identifier -> "ORC-2-Placer Order Number / ORC-3-Filler Order Number"
* medication[x] -> "RXE-2-Give Code / RXO-1-Requested Give Code / RXC-2-Component Code"
* subject -> "PID-3-Patient ID List"
* encounter -> "PV1-19-Visit Number"
* authoredOn -> "RXE-32-Original Order Date/Time / ORC-9-Date/Time of Transaction"
* reasonCode -> "ORC-16-Order Control Code Reason /RXE-27-Give Indication/RXO-20-Indication / RXD-21-Indication / RXG-22-Indication / RXA-19-Indication"
* dispenseRequest.numberOfRepeatsAllowed -> "RXE-12-Number of Refills"
* dispenseRequest.quantity -> "RXD-4-Actual Dispense Amount / RXD-5.1-Actual Dispense Units.code / RXD-5.3-Actual Dispense Units.name of coding system"
* substitution.allowed[x] -> "RXO-9-Allow Substitutions / RXE-9-Substitution Status"
* substitution.reason -> "RXE-9 Substition status"