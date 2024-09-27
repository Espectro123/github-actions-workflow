#!/bin/bash

set -e

environment=""

if [[ "$1" = "refs/heads/main" ]]; then
    environment="prod"
    echo "prod"
elif [[ "$1" = "refs/heads/dev" ]]; then
    environment="dev"
    echo "dev"
fi

return $environment