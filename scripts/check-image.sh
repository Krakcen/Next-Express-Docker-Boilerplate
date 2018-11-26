#!/bin/bash

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

RESULT=($(docker images ${1} | wc -l))

if [ $RESULT = 1 ]; then
        echo -e -n "${RED}${BOLD}There is no docker image called ${1}${NORMAL}\n"
        exit 1
else
         echo -e -n "${GREEN}${BOLD}There is an image called ${1}${NORMAL}\n"
        exit 0
fi