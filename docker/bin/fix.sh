#!/bin/bash

username="www-data"

if [ -n "$IS_DOCKER" ]; then
    echo "Script should not be executed in container."
fi

docker exec -it iteo-www chown -R "$username":"$username" ./var/