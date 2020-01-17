#!/bin/bash
# number of runnable processes
NLIMIT=5

while :
do
NLAST="$(vmstat | tail -n 1 | cut -c1-3)"
if (($(echo "$NLAST >= $NLIMIT" | bc -l) )); then
        echo "$(date) nuber of runnable processes = $NLAST" >> /opt/cpumonitoring/cpunum.log
fi
sleep 1
done
