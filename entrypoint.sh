#!/bin/bash
set -e
# define help message
show_help() {
    echo """
    Usage: docker run [OPTIONS] <imagename> [COMMAND]

    Commands
    bash     : Start a bash shell
    help     : Show this message

    otherwise, default turbogears server instance will start.
    ==========================================================
    Docker Options:
    Volumes: 
            /opt/works
    ==========================================================
    For example:
    """
}

# Run
case "$1" in
    help)
        show_help
    ;;
    *)
        exec "$@"
    ;;
esac