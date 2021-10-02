#!/usr/bin/env bash
source slgvars.env
#replace variables using slgvars.env
envsubst < templates/.env.conf > .env
envsubst < templates/nginx.conf > reverse-proxy/nginx.conf

# if (( "$1" == "deploy"));
# then 
#     docker-compose up --build --remove-orphans
# fi;

echo "done" ;