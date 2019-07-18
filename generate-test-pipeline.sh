#!/bin/sh

set -eu

{
cat <<EOF
steps:
  - label: test armhf
    command:
    - env
    agents:
    - "andy-test=true"
EOF
} | buildkite-agent pipeline upload
