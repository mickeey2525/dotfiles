#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

DRY_RUN=false

while getopts ":n" opt; do
  case ${opt} in
  n )
    DRY_RUN=$OPTARG
    ;;
  \? )
    echo "Invalid Option: -$OPTARG" 1>&2
    exit 1
    ;;
  : )
    echo "Invalid Option: -$OPTARG requires an argument" 1>&2
    exit 1
    ;;
  esac
done

if $DRY_RUN; then
    mitamae local -n "${SCRIPT_DIR}/../recipes/roles/darwin/default.rb"
else
    mitamae local "${SCRIPT_DIR}/../recipes/roles/darwin/default.rb"
fi
