Mapping: v2-for-MedicationDispense
Id: v2
Title: "HL7 v2 Mapping"
Source: MedicationDispense
Target: "http://hl7.org/v2"
* medication[x] -> "RXD-2-Dispense/Give Code"
* subject -> "PID-3-Patient ID List"
* authorizingPrescription -> "ORC-2 Placer Order Number"
* type -> "RXD-33-Dispense Type"
* quantity -> "RXD-4-Actual Dispense Amount / RXD-5.1-Actual Dispense Units.code / RXD-5.3-Actual Dispense Units.name of coding system"
* daysSupply -> "TQ1.6 Timing/Quantity Segment Service Duration.\rPrior to v2.5, ORC.7.3 Common Order Segment / Quantity/Timing / Duration component.  This is a formatted string, first character for the time unit (e.g., D=days), followed by the value.  For example, “D14” represents “14 days supply”\rFrom v2.5 on, TQ1.6 Timing/Quantity Segment / Service Duration.  This is a CQ data type (<Quantity (NM)> ^ <Units (CWE)>), thus for days supply, assuming the unit of measure is “days”, the numeric value is TQ1.6.1 (…|14^\rFor backwards compatibility, ORC.7 was permitted through v2.6.  Both forms (field and segment) may be present in v2.5, v2.5.1, and v2.6"
* whenPrepared -> "RXD-3-Date/Time Dispensed"
* whenHandedOver -> "RXD-3-Date/Time Dispensed"
* destination -> "RXD-13 Dispense-to Location; RXD-30 Dispense to Pharmacy; RXD-31 Dispense to Pharmacy Address"
* note -> "RXD-9 Dispense Notes"
* substitution.type -> "RXO-9-Allow Substitutions / RXE-9-Substitution Status"