#!/bin/bash

FILE=$1

if [ ! -f "$FILE" ]; then
    echo "Error: file does not exist"
    exit 1
fi

echo "File found:"
ls -l "$FILE"

