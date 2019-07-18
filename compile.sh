#!/bin/sh

set -eu

cat <<EOF
steps:
  - command:
    - echo compiling for armhf
    agents:
    - "andy-test=true"
  - command:
    - echo compiling for aarch64
    agents:
    - "andy-test=true"
EOF
