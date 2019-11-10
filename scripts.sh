#!/usr/bin/env bash
set -euo pipefail

# Snyk with larger heap
GRADLE_OPTS="-Xmx4g" snyk test --all-sub-projects
