#!/bin/bash

ENVIRONMENT=$1

if [ "$ENVIRONMENT" = "prod" ]; then
    echo "Production deployment approved"
else
    echo "Non-production environment"
fi
