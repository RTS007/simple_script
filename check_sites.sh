`#!/bin/sh
# @copyright RTS007
# @breef To rape Russian sites

# Regular Colors
STD='\033[0m'    # Reset
OK='\033[0;32m'  # Green
ERR='\033[0;31m' # Red

SITES=(www.gosuslugi.ru www.mos.ru www.kremlin.ru www.government.ru www.mil.ru www.nalog.gov.ru www.customs.gov.ru www.pfr.gov.ru www.rkn.gov.ru www.sberbank.ru online.sberbank.ru www.vtb.ru www.gazprombank.ru www.gazprom.ru www.lukoil.ru www.magnit.ru www.nornickel.com www.surgutneftegas.ru www.tatneft.ru www.evraz.com www.nlmk.com www.sibur.ru www.severstal.com www.metalloinvest.com www.nangs.org www.rmk-group.ru www.tmk-group.ru www.polymetalinternational.com www.uralkali.com www.eurosib.ru www.omk.ru)

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
`
