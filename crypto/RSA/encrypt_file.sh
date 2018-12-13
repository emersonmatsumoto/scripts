#!/bin/sh

openssl rsautl -encrypt -inkey public_key.pem -pubin -in $1 -out $2
