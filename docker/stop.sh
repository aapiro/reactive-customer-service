#!/bin/bash

CALLER_DIRECTORY=$(pwd)
SCRIPT_DIRECTORY=$(dirname $(realpath ${BASH_SOURCE[0]}))

cd $SCRIPT_DIRECTORY
docker-compose down

cd $CALLER_DIRECTORY