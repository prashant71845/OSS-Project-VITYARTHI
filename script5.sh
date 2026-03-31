#!/bin/bash

# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you (one word): " FREEDOM
read -p "3. What would you build and share freely: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "----------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in open source because tools like $TOOL show how powerful shared knowledge can be." >> $OUTPUT
echo "To me, freedom means $FREEDOM, and it should be reflected in the software we use." >> $OUTPUT
echo "If given a chance, I would build $BUILD and share it freely with others." >> $OUTPUT

echo ""
echo "Manifesto saved in $OUTPUT"
echo ""
cat $OUTPUT
