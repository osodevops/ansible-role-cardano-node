#!/usr/bin/env bash
# Script to generate Cardano backup and upload to amazon S3 - intended to be run as the cardano user

# Start logging
exec > >(tee /var/log/last-cardano-backup-to-s3.log | logger -t cardano-backup-to-s3) 2>&1
echo "==========================="
date
echo "==========================="
echo "== Log file: /var/log/last-cardano-backup-to-s3.log"

TODO: Implement script.