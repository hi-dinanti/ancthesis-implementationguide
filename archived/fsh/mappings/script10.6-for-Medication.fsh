Mapping: script10.6-for-Medication
Id: script10.6
Title: "Mapping to NCPDP SCRIPT 10.6"
Source: Medication
Target: "http://ncpdp.org/SCRIPT10_6"
* -> "NewRx/MedicationPrescribed\r-or-\rRxFill/MedicationDispensed\r-or-\rRxHistoryResponse/MedicationDispensed\r-or-\rRxHistoryResponse/MedicationPrescribed"
* code -> "coding.code = //element(*,MedicationType)/DrugCoded/ProductCode\r\rcoding.system = //element(*,MedicationType)/DrugCoded/ProductCodeQualifier\r\rcoding.display = //element(*,MedicationType)/DrugDescription"
* manufacturer -> "no mapping"
* form -> "coding.code =  //element(*,DrugCodedType)/FormCode\r\rcoding.system = //element(*,DrugCodedType)/FormSourceCode"
* ingredient.item[x] -> "coding.code = //element(*,MedicationType)/DrugCoded/ProductCode\r\rcoding.system = //element(*,MedicationType)/DrugCoded/ProductCodeQualifier\r\rcoding.display = //element(*,MedicationType)/DrugDescription"
* ingredient.strength -> "//element(*,DrugCodedType)/Strength"
* batch -> "no mapping"
* batch.lotNumber -> "no mapping"
* batch.expirationDate -> "no mapping"