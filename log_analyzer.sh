#!/bin/bash

LOGFILE="/var/log/auth.log"
OUTPUT="/var/log/ssh_attempts.log"

echo "SSH Login Attempts - $(date)" > $OUTPUT
grep "sshd.*Accepted" $LOGFILE | awk '{print $1, $2, $3, $9, $11}' >> $OUTPUT

echo "Failed Login Attempts:" >> $OUTPUT
grep "sshd.*Failed password" $LOGFILE | awk '{print $1, $2, $3, $9, $11}' >> $OUTPUT

echo "-----------------------------------------" >> $OUTPUT
