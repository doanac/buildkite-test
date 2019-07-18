#!/bin/sh

set -eu

rm -rf /archive
mkdir /archive
env > /archive/env.txt

./generate-test-pipeline.sh
