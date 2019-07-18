#!/bin/sh

set -eu

cat <<EOF
steps:
  - label: Compile for armhf
    command: ./compile.sh
    env:
      BUILD_ARCH: armhf
    agents:
    - "andy-test=true"
  - label: Compile for aarch64
    command:
    - ./compile.sh
    env:
      BUILD_ARCH=aarch64
    agents:
    - "andy-test=true"
EOF
