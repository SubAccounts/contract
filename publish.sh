#!/bin/sh

rm -rf dist/*

npm run build

cp package.json dist/
cp README.md dist/
cp tsconfig.json dist/

cd dist

npm pack --dry-run

mv contracts/index.mjs contracts/index.js
mv contracts/index.d.mts contracts/index.d.ts

mv ethers-v5/index.mjs ethers-v5/index.js
mv ethers-v5/index.d.mts ethers-v5/index.d.ts

npm publish
