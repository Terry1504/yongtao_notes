#!/bin/bash
FILE="me.log"
OUTPUT="tmo.log"
KEYWORD="a803c5"
UNWANTED="OffsetsCommitted"
cat $FILE | grep $KEYWORD | grep -v $UNWANTED | while read rows
do
    echo "$rows " >> $OUTPUT
done
wc -l $OUTPUT
