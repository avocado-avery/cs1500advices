#!/usr/bin/env bash

# curl this api https://api.adviceslip.com/advice and format the data to only show the advice text
# append the advice into a log file called yourfirstname.lastname.advices
# You should make it easier for the user to read, provide datetime information in the same line

curl -s https://api.adviceslip.com/advice | jq -r '.slip.advice' | awk -v date="$(date '+%Y-%m-%d %H:%M:%S')" '{print date " - " $0}' >>avery.hughes.advices
