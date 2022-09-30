#!/bin/sh
docker-compose exec wordpress php "$@"
return $?