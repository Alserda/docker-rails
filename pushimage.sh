#!/bin/bash
REPO='alserda/demo_app'

docker-compose --file docker-compose-development.yml build
echo "What's the image ID?"
read image_ID
docker tag -f $image_ID $REPO:latest
docker login
docker push $REPO


