#!/bin/sh

while true; do
    echo "$ docker system prune -f $@"
    docker system prune -f $@

    if [ -n "$SLEEP" ]; then
        echo "Sleep for $SLEEP seconds..."
        sleep "$SLEEP"
        echo
    else
        exit 0
    fi
done
