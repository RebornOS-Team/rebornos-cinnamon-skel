#! /usr/bin/env sh

SCRIPT_DIRECTORY="$(dirname -- "$(readlink -f -- "$0")")"
PROJECT_DIRECTORY="$(dirname -- "$SCRIPT_DIRECTORY")"

cd "$PROJECT_DIRECTORY" \
    && sh "$SCRIPT_DIRECTORY/_update_local_dconf_database_user.sh" \
    && updpkgsums \
    && makepkg --noextract --cleanbuild --force --clean
