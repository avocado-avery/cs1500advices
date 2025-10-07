#!/usr/bin/env bash

# crontab entry to run this script every hour:
# 0 * * * * /path/to/midterm.sh
curl -s https://api.adviceslip.com/advice | jq -r '.slip.advice' | awk -v date="$(date '+%Y-%m-%d %H:%M:%S')" '{print date " - " $0}' >>avery.hughes.advices
