#!/bin/sh

openssl rsautl -decrypt -inkey private_key.pem -in $1 -out $2
