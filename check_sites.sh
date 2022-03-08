#!/bin/sh
# @copyright RTS007
# @breef To rape Russian sites

# Regular Colors
STD='\033[0m'    # Reset
OK='\033[0;32m'  # Green
ERR='\033[0;31m' # Red

SITES=("no war no corrupt politic no covid lie no idiots no hate no putin no makron no biden no no no")

while [ 1 ]; do
   for l in "${SITES[@]}"; do
      l="$(fping $l)"
      if [[ $l == *"unreachable"* ]]; then
         echo -e "${OK}${l}${STD}"
      else
         echo -e "${ERR}${l}${STD}"
      fi
   done
done
