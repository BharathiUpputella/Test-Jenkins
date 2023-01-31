#!/bin/bash
#sh buildfe.sh -e stg/prod
echo "$(apt install nodejs)"
echo "$(node -v)"
echo "$(npm -v)"
echo "$(npm install -g yarn)"
echo "$(yarn --version)"
echo "$(yarn install)"
