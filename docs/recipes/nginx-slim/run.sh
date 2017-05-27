#!/bin/bash

# Output documentation and help
function documentation () {
cat <<END
Custom helper commands for managing Docker

Usage: run.sh COMMAND [arg...]

Commands:'
    up           Run docker-compose up command with extra arguments
    down         Run docker-compose down command with extra arguments
    composer     Run Composer command
END
}

# If arguments are passed, for example ./run.sh up
if [ $# -gt 0 ];then

    if [ "$1" == "up" ]; then
        shift 1
        docker-compose -f ./.docker/docker-compose.yml up -d --force-recreate --build

    elif [ "$1" == "down" ]; then
        shift 1
        docker-compose -f ./.docker/docker-compose.yml down

    elif [ "$1" == "composer" ]; then
        shift 1
        docker-compose -f ./.docker/docker-compose.yml run --rm -w /var/www/html app composer "$@"

    else
        documentation
    fi
else
    documentation
fi
