#!/bin/bash

CALLER_DIRECTORY=$(pwd)
SCRIPT_DIRECTORY=$(dirname $(realpath ${BASH_SOURCE[0]}))

cd $SCRIPT_DIRECTORY/..
mvn -Pdocker clean package

cd $SCRIPT_DIRECTORY
docker-compose up --build -d

cd $CALLER_DIRECTORY