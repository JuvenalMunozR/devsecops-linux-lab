#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Error: environment not specified"
    echo "Usage: ./argument-validation.sh <environment>"
    exit 1
fi

echo "Environment selected: $1"

