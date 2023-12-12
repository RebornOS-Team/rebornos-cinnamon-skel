#! /usr/bin/env sh

SCRIPT_DIRECTORY="$(dirname -- "$(readlink -f -- "$0")")"
PROJECT_DIRECTORY="$(dirname -- "$SCRIPT_DIRECTORY")"

KEYFILE_DIRECTORY="$PROJECT_DIRECTORY/keyfiles"
OUTPUT_FILE="$PROJECT_DIRECTORY/user"

dconf compile "$OUTPUT_FILE" "$KEYFILE_DIRECTORY"
