#!/bin/bash

# Set variables
APP_NAME=hello-world
APP_VERSION=0.2.0
ARTIFACT_FILE=$APP_NAME-$APP_VERSION.jar
ARTIFACT_PATH=target/$ARTIFACT_FILE
COMPRESSED_FILE=$APP_NAME-$APP_VERSION.tar.gz

# Compress the artifact
tar -czf $COMPRESSED_FILE $ARTIFACT_PATH

# Deploy the compressed artifact
docker run -d -p 8080:8080 -v $(pwd)/$COMPRESSED_FILE:/mnt/volume/$COMPRESSED_FILE my-docker-image


