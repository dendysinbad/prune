#!/bin/sh

while true; do
    echo "$ docker ${ACTION:-system} prune -f $@"
    docker ${ACTION:-system} prune -f $@

    if [ -n "$SLEEP" ]; then
        echo "Sleep for $SLEEP seconds..."
        sleep "$SLEEP"
        echo
    else
        exit 0
    fi
done
