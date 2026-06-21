#!/usr/bin/env bash
# Rebuild the pptxgenjs fork: rollup (src → src/bld) then publish to dist/.
set -e
cd "$(dirname "$0")"
npm run build --silent
cp src/bld/pptxgen.cjs.js dist/pptxgen.cjs.js
cp src/bld/pptxgen.es.js  dist/pptxgen.es.js
cp src/bld/pptxgen.js     dist/pptxgen.js 2>/dev/null || true
echo "fork dist refreshed from src/"
