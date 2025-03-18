Instance: Inline-Instance-for-GOFSH-GENERATED-ID-17-2
InstanceOf: Condition
Usage: #inline
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#A15.0 "Tuberculosis of lung, confirmed by sputum microscopy with or without culture"
* encounter = Reference(urn:uuid:2ba985a6-dccc-499b-a4ff-22d9564c9dbb)
* meta.lastUpdated = "2022-11-30T08:12:21.445698+00:00"
* meta.versionId = "MTY2OTc5NTk0MTQ0NTY5ODAwMA"
* onsetDateTime = "2023-06-14T00:00:00+00:00"
* recordedDate = "2023-06-14T00:00:00+00:00"
* subject = Reference(Patient/100000030006) "Jane Smith"