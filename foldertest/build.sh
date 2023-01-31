#!/bin/bash
#sh buildfe.sh -e stg/prod
while getopts e: flag
do
        case "${flag}" in
                e) environment=${OPTARG};;
        esac
done
if [[ -z "$environment" ]]
then
        echo "Missing Environment arguement : -e stg"
        exit 1
fi
echo "$(yarn install)"
