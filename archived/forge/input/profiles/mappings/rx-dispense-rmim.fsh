Mapping: rx-dispense-rmim
Id: rx-dispense-rmim
Title: "V3 Pharmacy Dispense RMIM"
Source: MedicationDispense
Target: "http://www.hl7.org/v3/PORX_RM020070UV"
* identifier -> "CombinedMedicationDispense.id"
* status -> "CombinedMedicationDispense.SupplyEvent.statusCode"
* medication[x] -> "CombinedMedicationRequest.component1.AdministrationRequest.consumable"
* authorizingPrescription -> "CombinedMedicationDispense.inFulfillmentOf"
* type -> "CombinedMedicationDispense.SupplyEvent.code"
* quantity -> "CombinedMedicationDispense.SupplyEvent.quantity"
* whenPrepared -> "CombinedMedicationDispense.SupplyEvent.effectiveTime"
* whenHandedOver -> "CombinedMedicationDispense.SupplyEvent.effectiveTime"
* destination -> "CombinedMedicationDispense.SupplyEvent.destination"
* receiver -> "CombinedMedicationDispense.SupplyEvent.receiver"
* substitution -> "CombinedMedicationDispense.substitutionMade"
* substitution.type -> "CombinedMedicationDispense.substitutionMade.code"
* substitution.reason -> "CombinedMedicationDispense.substitutionMade.reasonCode"
* substitution.responsibleParty -> "CombinedMedicationDispense.substitutionMade.ResponsibleParty"