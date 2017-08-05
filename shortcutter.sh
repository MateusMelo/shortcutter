#!/bin/bash

EXEC=$1
ICON=$2
CONFIGFILE=${EXEC}.desktop
RED='\033[0;32m'
NC='\033[0m'

echo -e "Creating shortcurt for ${RED}${EXEC}${NC} \n"

echo -e "Moving for /usr/local/bin \n"

#sudo mv ${EXEC}/ /usr/local/bin/

echo -e "Creating config file \n"

touch ${CONFIGFILE}

echo "[Desktop Entry]" >> ${CONFIGFILE}
echo "Encoding=UTF-8" >> ${CONFIGFILE}
