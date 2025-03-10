Extension: DocumentStatus
Id: DocumentStatus
Context: Composition
* ^date = "2023-09-30T04:09:34.6317712+00:00"
* . 1..
* extension contains
    statusCode 1..1 and
    statusTime 0..1 and
    statusAssigner 0..1
* extension[statusCode].value[x] only code
* extension[statusTime].value[x] only dateTime
* extension[statusAssigner].value[x] only Reference