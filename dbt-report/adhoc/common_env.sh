#!/bin/bash

export DBT_STARROCKS_HOST=starrocks-fe-service.starrocks.svc
export DBT_STARROCKS_PORT=9030
export DBT_TARGET=prod

echo "Please enter your username:"
read -r email
export USERNAME=$email

echo "Please enter your password:"
read -r password
export PASSWORD=$password