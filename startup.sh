#!/bin/sh

python /opt/couchpotato/CouchPotato.py --daemon --data_dir=/mnt/state
sleep 5
tail -f /mnt/state/logs/CouchPotato.log

