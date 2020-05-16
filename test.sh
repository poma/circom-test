#!/bin/bash
npm ci
npx circom -rw
npx snarkjs setup --protocol groth
npx snarkjs calculatewitness
npx snarkjs proof
npx snarkjs verify
