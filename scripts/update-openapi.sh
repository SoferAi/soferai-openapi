#!/bin/bash
set -euo pipefail

# Fetch the latest OpenAPI spec
curl -s https://api.sofer.ai/openapi.json | jq > openapi.json

# Convert JSON to YAML using yq
yq -P --output-format yaml openapi.json > openapi.yaml 

yamlfmt .
