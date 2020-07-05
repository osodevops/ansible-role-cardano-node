#!/usr/bin/env bash
# Script to generate Cardano maintenance cleanup - intended to be run as the cardano user

# Start logging
exec > >(tee /var/log/cardano-cleanup.log | logger -t cardano-cleanup) 2>&1
echo "==========================="
date
echo "==========================="
echo "== Log file: /var/log/cardano-cleanup.log"

TODO: Implement script.