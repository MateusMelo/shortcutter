#!/bin/bash

FOLDER=$1
NAME=$2
ICON=$3
CONFIGFILE=${NAME}.desktop
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "Creating shortcurt for ${GREEN}${NAME}${NC} \n"

echo -e "Moving to /opt \n"

sudo mv ${FOLDER}/ /opt/

echo -e "Linking to /usr/local/bin \n"

sudo chmod +x /opt/${NAME}/${NAME}

sudo ln -s /opt/${NAME}/${NAME} /usr/local/bin/${NAME}

echo -e "Creating config file \n"

touch ${CONFIGFILE}

echo "[Desktop Entry]" >> ${CONFIGFILE}
echo "Encoding=UTF-8" >> ${CONFIGFILE}
echo "Name=${NAME}" >> ${CONFIGFILE}
echo "Comment=Launch ${NAME}" >> ${CONFIGFILE}
echo "Icon=${ICON}" >> ${CONFIGFILE}
echo "Exec=/usr/local/bin/${NAME}" >> ${CONFIGFILE}
echo "Terminal=false" >> ${CONFIGFILE}
echo "Type=Application" >> ${CONFIGFILE}
echo "Categories=Developer;" >> ${CONFIGFILE}
echo "StartupNotify=true" >> ${CONFIGFILE}

mv ${CONFIGFILE} ~/.local/share/applications/${CONFIGFILE}

echo -e "Restart for apply all changes \n"
