#!/bin/bash


IMAGE_NAME=react-project
IMAGE_VERSION=v1

####
docker tag $IMAGE_NAME:$IMAGE_VERSION aravindthiyagarajan/prod:$IMAGE_VERSION
docker tag $IMAGE_NAME:$IMAGE_VERSION aravindthiyagarajan/dev:$IMAGE_VERSION

docker push aravindthiyagarajan/dev:v1
docker login --username aravindthiyagarajan --password devopsengineer@2023
docker push aravindthiyagarajan/prod:v1
docker logout
~

