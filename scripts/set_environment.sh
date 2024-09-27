#!/bin/bash

set -e

if [[ "$1" = "refs/heads/main" ]]; then
    echo "environment=prod" >> $2
    echo "tf_vars_file=prod.tfvars" >> $2
    
elif [[ "$1" = "refs/heads/dev" ]]; then
    echo "environment=dev" >> $2
    echo "tf_vars_file=dev.tfvars" >> $2
fi

