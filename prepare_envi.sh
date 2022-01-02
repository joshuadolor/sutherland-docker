#!/usr/bin/env bash
source slgvars.env
#replace variables using slgvars.env
envsubst < templates/.env.conf > .env
envsubst < templates/nginx/nginx.conf > reverse-proxy/nginx.conf
envsubst < templates/nginx/upstream/loi.conf > reverse-proxy/upstream/loi.conf
envsubst < templates/nginx/upstream/ofac.conf > reverse-proxy/upstream/ofac.conf
envsubst < templates/nginx/upstream/slg.conf > reverse-proxy/upstream/slg.conf
envsubst < templates/nginx/upstream/onboarding.conf > reverse-proxy/upstream/onboarding.conf

# if (( "$1" == "deploy"));
# then 
#     docker-compose up --build --remove-orphans
# fi;

echo "done" ;