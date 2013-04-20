#!/bin/sh

# DESCRIPTION
# Executes all OSX setup scripts.

# USAGE
# ./install.sh

# SETTINGS
set -e # Exit if any command returns non-zero.
source settings/settings.sh

# FUNCTIONS
source functions/helpers.sh

# EXECUTION
echo ''
if [ -z "$1" ]; then
  while true; do
    echo "Usage: install OPTION"
    echo "\nOSX Options:"
    echo "  b: Apply basic machine settings."
    echo "  h: Install Homebrew software (i.e. non-GUI, command line interfaces)."
    echo "  a: Install application software (i.e. GUI-enabled)."
    echo "  x: Install application extensions (i.e. enhancements, add-ons, plug-ins, etc.)"
    echo "  d: Apply software defaults."
    echo "  w: Clean install work directory."
    echo "  i: Perform complete install (i.e. basic settings, Homebrew, applications, extensions, defaults, and work directory clean-up)."
    echo "  c: Check status of installed applications and extensions."
    echo "  q: Quit/Exit."
    echo ''
    read -p "Enter selection: " response
    process_option $response
  done
else
  process_option $1
fi
echo ''
