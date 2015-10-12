#!/bin/bash
docker-compose --file docker-compose-production.yml stop \
&& docker-compose --file docker-compose-production.yml rm --force \
&& docker rmi alserda/demo_app \
&& docker-compose --file docker-compose-production.yml build \
&& docker-compose --file docker-compose-production.yml up -d \
&& echo "Waiting." \
&& sleep 3 \
&& echo "Waiting.." \
&& sleep 3 \
&& echo "Waiting..." \
&& sleep 3 \
&& echo "Waiting....\n" \
&& docker-compose --file docker-compose-production.yml run app rake db:create \
&& sleep 3 \
&& docker-compose --file docker-compose-production.yml run app rake db:migrate
