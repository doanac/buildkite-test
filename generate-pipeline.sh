#!/bin/sh

set -eu

cat <<EOF
steps:
  - command:
    - echo compiling for armhf
    - ./compile.sh
    agents:
    - "andy-test=true"
  - command:
    - echo compiling for aarch64
    - ./compile.sh
    agents:
    - "andy-test=true"
EOF
