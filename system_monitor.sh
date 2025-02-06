#!/bin/bash

LOGFILE="/var/log/system_monitor.log"

while true; do
    echo "----- System Resource Usage: $(date) -----" >> $LOGFILE
    echo "CPU Usage:" >> $LOGFILE
    top -b -n 1 | head -10 >> $LOGFILE

    echo "Memory Usage:" >> $LOGFILE
    free -m >> $LOGFILE

    echo "Disk Usage:" >> $LOGFILE
    df -h >> $LOGFILE

    echo "--------------------------------------------------" >> $LOGFILE
    sleep 60  # Wait for 60 seconds before next execution
done

