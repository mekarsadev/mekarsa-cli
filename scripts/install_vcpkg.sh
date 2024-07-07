#!/bin/bash

set -e

BASE_DIR=$1

if [ -z "$BASE_DIR" ]; then
  echo "Usage: $0 <base-directory>"
  exit 1
fi

function run_command() {
  echo "Running: $@"
  "$@"
}

function clone_vcpkg() {
  if [ ! -d "$BASE_DIR/vcpkg" ]; then
    echo "Cloning vcpkg repository into $BASE_DIR ..."
    run_command git clone https://github.com/microsoft/vcpkg.git "$BASE_DIR/vcpkg"
  else
    echo "vcpkg reposity already exists in $BASE_DIR. Skipping clone step."
  fi
}

function bootstrap_vcpkg() {
  cd "$BASE_DIR/vcpkg"
  echo "Bootstraping vcpkg ..."
  run_command ./bootstrap_vcpkg.sh
}

clone_vcpkg
bootstrap_vcpkg

echo "vcpkg installation completed successfully."
