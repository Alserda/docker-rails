#!/bin/bash
REPO='alserda/demo_app'

echo "What's the image ID?"
read image_ID
docker tag $image_ID $REPO:latest
docker login
docker push $REPO


