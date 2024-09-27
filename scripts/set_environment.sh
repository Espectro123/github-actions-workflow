#!/bin/bash

set -e

if [[ "$1" = "refs/heads/main" ]]; then
    echo "Entorno Productivo"
    export environment="prod"
elif [[ "$1" = "refs/heads/dev" ]]; then
    echo "Entorno Desarrollo"
    export environment="dev"
fi