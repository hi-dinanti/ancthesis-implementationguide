CodeSystem: satusehat-custom-codes
Id: satusehat-custom-codes
Title: "SATUSEHAT Codes CodeSystem"
Description: "Set of codes representing SATUSEHAT concepts used in the implementation guide"
Description: "A ValueSet that includes custom codes specific to SatuSehat."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* include codes from system http://terminology.kemkes.go.id/CodeSystem/anc-custom-codes
    * #ANC.SS.DE58 "IMT Sebelum Hamil"
    * #ANC.SS.DE53 "Jarak kehamilan"
    * #ANC.SS.DE13 "Trimester ke"
    * #ANC.SS.DE3 "Lingkar Lengan Atas (LiLA)"
    * #ANC.SS.DE2 "Pernapasan"
    * #ANC.SS.DE26 "Pemeriksaan Fisik Konjungtiva"
    * #ANC.SS.DE26 "Pemeriskaan Fisik Sklera"
    * #ANC.SS.DE28 "Pemeriksaan Fisik Leher"
    * #ANC.SS.DE29 "Pemeriksaan Fisik Area Mulut"
    * #ANC.SS.DE30 "Pemeriksaan Fisik Telinga Hidung dan Tenggorokan (THT)"
    * #ANC.SS.DE31 "Pemeriksaan Fisik Dada (Auskultasi Jantung)"
    * #ANC.SS.DE32 "Pemeriksaan Fisik Dada (Auskultasi Paru)"
    * #ANC.SS.DE33 "Pemeriksaan Fisik Perut"
    * #ANC.SS.DE34 "Pemeriksaan Fisik Tungkai"
    * #ANC.SS.DE46 "Kepala Terhadap PAP"
    * #ANC.SS.DE46 "Taksiran Berat Janin"
    * #ANC.SS.DE36 "Gestational sac (GS) USG"
    * #ANC.SS.DE37 "Fetal Crown Rump Length (CRL) USG"
    * #ANC.SS.DE38 "Denyut Jantung Janin (DJJ) USG"
    * #ANC.SS.DE40 "Hari Perkiraan Lahir (HPL) USG"
    * #ANC.SS.DE41 "ANC.SS.DE41"
    * #ANC.SS.DE59 "Biparietal Diameter (BPD) USG"
    * #ANC.SS.DE42 "Head Circumference (HC) USG"
    * #ANC.SS.DE43 "Abdominal Circumference (AC) USG"
    * #ANC.SS.DE44 "Letak Janin USG"
    * #ANC.SS.DE45 "Berat janin USG"
    * #ANC.SS.DE45 "Femur Length (FL) USG"

* include codes from system http://sys-ids.kemkes.go.id/kfa
    * #VG139 "Td"

* include codes from system http://terminology.kemkes.go.id/CodeSystem/clinical-term
    * #OC000010 "Indeks Massa Tubuh Sebelum Hamil"
    * #OC000011 "Target Kenaikan Berat Badan"
    * #OC000001 "Jarak kehamilan"
    * #OI000018 "Kurang Energi Kronis (KEK)"
    * #OI000035 "Risiko Kurang Energi Kronis (KEK)"
    * #FO000001 "MT Lokal"
    * #FO000002 "MT Pabrikan"

* include codes from system http://terminology.kemkes.go.id/CodeSystem/immunization-reason
    * #IM-WUS "Imunsasi Program Rutin Lanjutan Wanita Usia Subur"