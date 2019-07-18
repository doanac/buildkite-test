#!/bin/sh

set -eu

{
cat <<EOF
steps:
  - label: Test for ${BUILD_ARCH}
    command:
    - env
    agents:
    - "andy-test=true"
EOF
} | buildkite-agent pipeline upload
