#! /usr/bin/env sh

COMMANDS_DIR="${CONTAINER_COMMANDS_DIR}"

if [ "$(echo $1 | cut -c -2)" = "__" ]
then
    command="$(echo $1 | cut -c 3-)"
    if [ ! -f "$COMMANDS_DIR/$command" ]
    then
        echo "Command '$command' not found in $COMMANDS_DIR"
        exit 1
    fi
    shift
    set -- "$COMMANDS_DIR/$command" "$@"
else
    set -- $0 __run "$@"
fi

exec "$@"
