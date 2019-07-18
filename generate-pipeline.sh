#!/bin/sh

set -eu

cat <<EOF
steps:
  - command:
    - echo compiling for armhf
    - ./compile.sh
    agents:
    - "andy-test=true"
    artifact_paths:
      - "/archive/*"
  - command:
    - echo compiling for aarch64
    - ./compile.sh
    artifact_paths:
      - "/archive/*"
    agents:
    - "andy-test=true"
EOF
