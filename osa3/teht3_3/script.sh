#!/bin/bash

git clone $1 workdir
cd workdir
docker build -t buildservice .
docker tag buildservice $2
docker login
docker push $2

