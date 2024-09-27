#!/bin/bash

if [[ $1 == "refs/head/main" ]] then
    echo "Entorno Productivo"
    export environment="prod"
elif [[ $1 == "refs/head/dev" ]] then
    echo "Entorno Desarrollo"
    export environment="dev"
fi