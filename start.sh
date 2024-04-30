#!/bin/bash

if [ $1 == '-u' ]
then
   docker-compose -f .docker/docker-compose.dev.yml up -d --remove-orphans
elif [ $1 == '-d' ]
then
   docker-compose -f .docker/docker-compose.dev.yml down
fi
