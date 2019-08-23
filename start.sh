#!/bin/bash

# This script needs to be ran in the root mailu directory

password=""
# The username must be the same as POSTMASTER in the mailu.env file
username="tom"
domain="odex.be"

docker-compose exec admin flask mailu admin "$username" "$domain" "$password"
