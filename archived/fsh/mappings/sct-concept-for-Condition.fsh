Mapping: sct-concept-for-Condition
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: Condition
Target: "http://snomed.info/conceptdomain"
* -> "< 243796009 |Situation with explicit context| : 246090004 |Associated finding| = ( ( < 404684003 |Clinical finding| MINUS ( << 420134006 |Propensity to adverse reactions| OR << 473010000 |Hypersensitivity condition| OR << 79899007 |Drug interaction| OR << 69449002 |Drug action| OR << 441742003 |Evaluation finding| OR << 307824009 |Administrative status| OR << 385356007 |Tumor stage finding|)) OR < 272379006 |Event|)"
* clinicalStatus -> "< 303105007 |Disease phases|"
* verificationStatus -> "< 410514004 |Finding context value|"
* category -> "< 404684003 |Clinical finding|"
* severity -> "< 272141005 |Severities|"
* code -> "code 246090004 |Associated finding| (< 404684003 |Clinical finding| MINUS\n<< 420134006 |Propensity to adverse reactions| MINUS \n<< 473010000 |Hypersensitivity condition| MINUS \n<< 79899007 |Drug interaction| MINUS\n<< 69449002 |Drug action| MINUS \n<< 441742003 |Evaluation finding| MINUS \n<< 307824009 |Administrative status| MINUS \n<< 385356007 |Tumor stage finding|) \nOR < 413350009 |Finding with explicit context|\nOR < 272379006 |Event|"
* bodySite -> "< 442083009  |Anatomical or acquired body structure|"
* stage.summary -> "< 254291000 |Staging and scales|"
* evidence.code -> "< 404684003 |Clinical finding|"