#!/bin/bash
# Start Typescript project
yarn init -y
yarn add typescript --dev
yarn tsc --init

yarn add xlsx
yarn add @types/node-fetch
yarn add @types/node --dev



mkdir -p src