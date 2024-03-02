#!/bin/bash

#Clones $1, builds the image, and pushes it to Docker Hub repository $2
#This script must be run with Docker capable privileges and you should login to your registry before pushing!

GITHUB="$1"		#Git account/repository
DOCKERHUB="$2"		#Docker Hub account/repository
REPO=${GITHUB#*\/}	#Git repository name

git clone https://github.com/$1

cd $REPO
docker build -t $2 .

docker push $2
