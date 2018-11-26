#!/bin/bash

# Color Definitions
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'

BOLD_GRAY='\033[0;37m'
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_BLUE='\033[1;34m'
BOLD_PURPLE='\033[1;35m'
BOLD_CYAN='\033[1;36m'

DARK_GRAY='\033[1;30m'
WHITE='\033[1;37m'
NC='\033[0m'

BOLD=$(tput bold)
NORMAL=$(tput sgr0)


# Log Versions
echo -e "${YELLOW}${BOLD}[ Starting build for the server ]${NORMAL}\n"
echo -n  "node version:     ${BOLD}"  ;  node     --version   ; echo -n "${NORMAL}"

if  [ $? -ne 0 ]; then
        echo 'Node has not yet been installed!';
        exit 1;
fi
echo -n  "npm version:      ${BOLD}"  ;  npm      --version   ; echo -n "${NORMAL}"
if  [ $? -ne 0 ]; then
        echo 'NPM has not yet been installed!';
        exit 1;
fi

echo -e "${YELLOW}${BOLD}[ Starting build for App ]${NORMAL}\n"

echo -e "${BOLD}Installing Depedencies...${NORMAL}\n"
npm install
echo -e "${BOLD}Dependencies Installed${NORMAL}\n"

echo -e "${BOLD}Building the App${NORMAL}\n"
npm run build

# exiting
exit 0