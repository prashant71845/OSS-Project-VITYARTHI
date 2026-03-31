#!/bin/bash

# Script 4: Log File Analyzer

LOGFILE="sample.log"
KEYWORD="error"
COUNT=0

# Creating sample log file
echo "error: something failed" > $LOGFILE
echo "info: system running" >> $LOGFILE
echo "warning: low memory" >> $LOGFILE
echo "error: failed again" >> $LOGFILE

# Check file exists
if [ ! -f "$LOGFILE" ]; then
    echo "File not found!"
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Matching lines:"
grep -i "$KEYWORD" "$LOGFILE"
