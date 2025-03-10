
# Introduction

This is a FHIR Implementation Guide to be used for Indonesian Health Service (SATUSEHAT) and developed based on SATUSEHAT Antenatal Care Playbook to be used in maternal and child health local area monitoring applications.

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
