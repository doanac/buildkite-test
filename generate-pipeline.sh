#!/bin/sh

set -eu

cat <<EOF
steps:
  - command:
    - echo compiling for armhf
    - ./compile.sh
    env:
      BUILD_ARCH=armhf
    agents:
    - "andy-test=true"
  - command:
    - echo compiling for aarch64
    - ./compile.sh
    env:
      BUILD_ARCH=aarch64
    agents:
    - "andy-test=true"
EOF
