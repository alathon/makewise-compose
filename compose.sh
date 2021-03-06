#!/bin/bash

if [[ $1 == "dev" ]]; then
  docker-compose "${@:2}"
elif [[ $1 == "prod" ]]; then
  docker-compose -f docker-compose.yml -f docker-compose.prod.yml "${@:2}"
else
  echo You must specify either dev or prod as the first argument
fi

