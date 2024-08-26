#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

mitamae local "${SCRIPT_DIR}/../recipes/roles/darwin/default.rb"
