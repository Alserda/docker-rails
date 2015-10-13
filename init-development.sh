#!/bin/bash
docker-compose build \
&& docker-compose up -d \
&& echo "Waiting." \
&& sleep 3 \
&& echo "Waiting.." \
&& sleep 3 \
&& echo "Waiting..." \
&& sleep 3 \
&& echo "Waiting....\n" \
&& docker-compose run app rake db:create \
&& sleep 3 \
&& docker-compose run app rake db:migrate
