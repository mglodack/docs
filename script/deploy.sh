#!/bin/bash

set -e

mkdir -p build
wget --retry-connrefused -q -O - https://github.com/timkay/aws/raw/8df4f583a26295c282ddb74ec4fda5f56a98c94c/aws build/aws

