#!/bin/bash

curl -fsS http://127.0.0.1:8000/packages.json | jq '
map(select(.status=="active" and .downloads >= 100))
| sort_by(-.downloads,.name)
| map({name,version,downloads})
' > tmp.json

cat > summary.md <<EOF
# Active Packages Report

| name | version | downloads |
|------|---------|-----------|
EOF

jq -r '.[] | "| \(.name) | \(.version) | \(.downloads) |"' tmp.json >> summary.md

rm -f tmp.json
