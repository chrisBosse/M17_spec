#!/usr/bin/env bash

# Invocation from script directory:
#
#   ./spellcheck.sh

# Invocation from project root directory:
#
#   .cspell/spellcheck.sh


# CSpell is a code spellchecker built in NodeJS.
# Assuming recent version of NodeJS/NPM installed.
# `npx` runs `npm` packages without installing in current project.
# Recommend installing NodeJS/NPM with `nvm`.

# Change directory incase this script was called from another place
# e.g. .cspell/spellcheck.sh vs. ./spellcheck.sh
cd "${0%/*}" || exit # This script's directory.
cd .. || exit # This script's parent directory.

npx cspell README.md pages/**/**/**/*.md --config=.cspell/cspell.yml
