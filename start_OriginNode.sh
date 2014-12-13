#!/bin/bash
# starting slon on Origin
# Change the binary location as per Origin Node
# Slony binaries/ip/clustername/conninfo according to node

DATE=$(date +%G%m%d)
SLONLOG="/tmp/primary_$DATE.log"

/usr/local/pg84/bin/slon -s 1000 upgrade 'host=192.168.22.130 dbname=masterdb user=postgres port=5432' >$SLONLOG 2>&1 &

exit
