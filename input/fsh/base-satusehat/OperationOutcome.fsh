Resource: OperationOutcome
Id: OperationOutcome
Description: "A collection of error, warning, or information messages that result from a system action."
* ^meta.lastUpdated = "2019-10-31T22:29:23.356+00:00"
* ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Foundation.Other"
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #normative
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-normative-version"
* ^extension[=].valueCode = #4.0.0
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 5
* ^extension[+].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^date = "2023-05-12T04:00:39.3091812+00:00"
* ^publisher = "Health Level Seven International (FHIR Infrastructure)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/fiwg/index.cfm"
* . ^short = "Information about the success/failure of an action"
* . ^definition = "A collection of error, warning, or information messages that result from a system action."
* . ^comment = "Can result from the failure of a REST call or be part of the response message returned from a request message."
* issue 1..undefined SU BackboneElement "A single issue associated with the action" "An error, warning, or information message that results from a system action."
* issue.severity 1..1 SU code "fatal | error | warning | information" "Indicates whether the issue indicates a variation from successful processing."
* issue.severity from http://hl7.org/fhir/ValueSet/issue-severity|4.0.1 (required)
* issue.severity ^comment = "This is labeled as \"Is Modifier\" because applications should not confuse hints and warnings with errors."
* issue.severity ^requirements = "Indicates how relevant the issue is to the overall success of the action."
* issue.severity ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* issue.severity ^binding.extension.valueString = "IssueSeverity"
* issue.severity ^binding.description = "How the issue affects the success of the action."
* issue.code 1..1 SU code "Error or warning code" "Describes the type of the issue. The system that creates an OperationOutcome SHALL choose the most applicable code from the IssueType value set, and may additional provide its own code for the error in the details element."
* issue.code from http://hl7.org/fhir/ValueSet/issue-type|4.0.1 (required)
* issue.code ^requirements = "Expresses the issue in a human and computer-friendly way, allowing the requesting system to behave differently based on the type of issue.\n\nThe required element provides a base level of computable interoperability across all systems for processing an outcome, allowing systems to respond appropriately regardless of the internal system error codes returned."
* issue.code ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* issue.code ^binding.extension.valueString = "IssueType"
* issue.code ^binding.description = "A code that describes the type of issue."
* issue.details undefined..1 SU CodeableConcept "Additional details about the error" "Additional details about the error. This may be a text description of the error or a system code that identifies the error."
* issue.details from http://hl7.org/fhir/ValueSet/operation-outcome (example)
* issue.details ^comment = "A human readable description of the error issue SHOULD be placed in details.text."
* issue.details ^binding.extension.url = "https://fhir.kemkes.go.id/r4/StructureDefinition/elementdefinition-bindingName"
* issue.details ^binding.extension.valueString = "IssueDetails"
* issue.details ^binding.description = "A code that provides details as the exact issue."
* issue.diagnostics undefined..1 SU string "Additional diagnostic information about the issue" "Additional diagnostic information about the issue."
* issue.diagnostics ^comment = "This may be a description of how a value is erroneous, a stack dump to help trace the issue or other troubleshooting information."
* issue.location undefined..undefined SU string "Deprecated: Path of element(s) related to issue" "This element is deprecated because it is XML specific. It is replaced by issue.expression, which is format independent, and simpler to parse. \n\nFor resource issues, this will be a simple XPath limited to element names, repetition indicators and the default child accessor that identifies one of the elements in the resource that caused this issue to be raised.  For HTTP errors, will be \"http.\" + the parameter name."
* issue.location ^extension[0].url = "https://fhir.kemkes.go.id/r4/StructureDefinition/structuredefinition-standards-status"
* issue.location ^extension[=].valueCode = #deprecated
* issue.location ^comment = "The root of the XPath is the resource or bundle that generated OperationOutcome.  Each XPath SHALL resolve to a single node.  This element is deprecated, and is being replaced by expression."
* issue.location ^requirements = "Allows systems to highlight or otherwise guide users to elements implicated in issues to allow them to be fixed more easily."
* issue.expression undefined..undefined SU string "FHIRPath of element(s) related to issue" "A [simple subset of FHIRPath](fhirpath.html#simple) limited to element names, repetition indicators and the default child accessor that identifies one of the elements in the resource that caused this issue to be raised."
* issue.expression ^comment = "The root of the FHIRPath is the resource or bundle that generated OperationOutcome.  Each FHIRPath SHALL resolve to a single node."
* issue.expression ^requirements = "Allows systems to highlight or otherwise guide users to elements implicated in issues to allow them to be fixed more easily."