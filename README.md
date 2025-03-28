# Introduction

This is a FHIR Implementation Guide (IG) for the  Indonesian Health Service (SATUSEHAT) , developed based on the SATUSEHAT Antenatal Care Playbook to support maternal and child health monitoring applications at the local level.

This project is part of a thesis research evaluating the adaptation of the  WHO SMART Guidelines , particularly:

* L2 : Digital Adaptation Kit (DAK) for Antenatal Care
* L3 : FHIR Implementation Guide for Antenatal Care

# Dependencies

* JSON data from [Indonesian Core ID](https://simplifier.net/guide/indonesia-satusehat-ihs-fhir-r4?version=current) (available publicly in [Simplifier.net](https://simplifier.net)) was converted to FHIR Shorthand (FSH) using  GoFSH .
* The rest of the IG content, including  profiles, value sets, and invariants , was authored using  FSH tooling .

# Installation

1. Install NodeJS.
2. Follow the instructions [here](https://fshschool.org/docs/sushi/installation/).
3. Install NPM: `npm install -g npm@11.2.0`.
4. Install FSH Sushi: `npm install -g fsh-sushi`.
5. Install GoFSH: `npm install -g gofsh`.

# Initialization

Follow the instructions [here](https://fshschool.org/docs/sushi/running/). Run `sushi .` to initialize the project from the root directory (the folder where `sushi-config.yaml` is located).

# Build FSH Project

Run `sushi build` to build the project.

# Preparing the FHIR IG Generator

1. Run the IG generator update script:
   * For Linux and macOS: `./_updatePublisher.sh`.
   * For Windows: `.\_updatePublisher.bat`.
   * Wait for the update to complete and select 'y' (yes) for all prompts. This script only needs to be run once at the beginning.
2. Download and install Java Runtime from [this page](https://www.oracle.com/id/java/technologies/downloads).
3. Install Jekyll by following the instructions [here](https://jekyllrb.com/docs/installation/windows/).

# Generate FHIR IG

1. Run the IG generator script:
   * For Linux and macOS: `./_genonce.sh`.
   * For Windows: `.\_genonce.bat`.
2. Draft for human readable guide available here: [FHIR IG PWS KIA](https://dev-fhir.pwskia.id/artifacts.html)

# Contribute

Contributions are welcome! If you would like to improve this IG, follow these steps:

1. Fork this repository
2. Create a new branch
3. Make your changes
4. Submit a pull request
