#!/bin/bash
docker build -t alserda/demo_app . \
&& docker-compose stop \
&& docker-compose rm --force \
&& sh init.sh
