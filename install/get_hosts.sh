#!/usr/bin/env bash

if [[ $(cat /etc/hosts | wc -l) -lt 30000 ]]; then
  curl "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" | sudo tee -a /etc/hosts > /dev/null 2>&1
fi
