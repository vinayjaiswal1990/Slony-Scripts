#!/bin/bash
# starting slon on Subscriber 
# Change Slony binaries/ip/clustername/conninfo according to 
# Subscriber node.

DATE=$(date +%G%m%d)
SLONLOG="/tmp/slave_$DATE.log"

/opt/PostgreSQL/9.3/bin/slon -s 1000 upgrade 'host=192.168.22.131 dbname=slavedb user=postgres port=5432' >$SLONLOG 2>&1 &

exit
