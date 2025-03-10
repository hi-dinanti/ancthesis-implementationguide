Logical: ANCVisit
Id: ANCVisit
Title: "Antenatal Care Visit"
Description: "Logical model for antenatal care visits, including assessments, diagnoses, and referrals."

* patient 0..1 BackboneElement "Patient Information"
  * name 1..1 string "Patient's Name"
  * age 1..1 integer "Patient's Age"
  * gravida 1..1 integer "Number of pregnancies (gravida)"
  * parity 1..1 integer "Number of previous births (parity)"

* visitDetails 1..1 BackboneElement "Visit Details"
  * date 1..1 dateTime "Date of ANC visit"
  * facility 1..1 string "Health center name"
  * provider 1..1 string "Name of healthcare provider"

* assessment 1..1 BackboneElement "Clinical Assessment"
  * bloodPressure 1..1 Quantity "Blood pressure measurement"
    * ^unit = "mmHg"
  * proteinuria 1..1 boolean "Presence of protein in urine"
  * labTests 0..* BackboneElement "Laboratory Tests"
    * testCode 1..1 CodeableConcept "LOINC/SNOMED code of test"
    * result 1..1 string "Result of the test"

* diagnosis 1..1 BackboneElement "Diagnosis"
  * code 1..1 CodeableConcept "Diagnosis Code"
  * description 1..1 string "Diagnosis Description"
  * severity 0..1 string "Severity level (mild, moderate, severe)"

* referral 0..1 BackboneElement "Referral"
  * referredTo 1..1 string "Referral facility"
  * reason 1..1 string "Reason for referral"
  * urgency 1..1 string "Urgency level (routine, urgent, emergency)"
