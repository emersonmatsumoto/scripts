#!/bin/sh

echo "$1" | openssl enc -aes-256-cbc -a -d
