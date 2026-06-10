#!/bin/bash

DIRECTORY=$1

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist"
    exit 1
fi

echo "Directory found:"
ls -ld "$DIRECTORY"
