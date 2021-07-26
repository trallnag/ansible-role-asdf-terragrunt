#!/usr/bin/env bash

role_name="trallnag.asdf_terragrunt"

function _get_role_id {
    ansible-galaxy info $role_name | grep -E 'id: [0-9]' | awk {'print $2'}
}

function _help {
    cat << EOF
Functions you can use like this 'bash run.sh <function name>':
    get-role-id
EOF
}

if [[ $# -eq 0 ]]; then
    _help
fi

for arg in "$@"; do
    if  [ $arg = "help" ] || [ $arg = "-help" ] || [ $arg = "--help" ]; then _help
    elif [ $arg = "get-role-id" ]; then _get_role_id
    else _help
    fi
done
