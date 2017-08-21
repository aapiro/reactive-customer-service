#!/bin/bash

cd ..
mvn -Pdocker clean package
cd docker
docker-compose up --build -d