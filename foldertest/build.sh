#!/bin/bash
#sh buildfe.sh -e stg/prod
echo "$(dnf install nodejs)"
echo "$(node -v)"
echo "$(npm -v)"
echo "$(npm install -g yarn)"
echo "$(yarn --version)"
echo "$(yarn install)"
