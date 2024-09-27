#!/bin/bash

set -e

environment=""

if [[ "$1" = "refs/heads/main" ]]; then
    environment="environment=prod"
    echo "prod"
elif [[ "$1" = "refs/heads/dev" ]]; then
    environment="environment=dev"
    echo "dev"
fi

echo $environment