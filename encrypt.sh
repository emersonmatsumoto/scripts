#!/bin/sh

# public_key.pem, file.txt

# create out folder
mkdir -p out

# generate random key
openssl rand -base64 32 > key.bin

# encrypt the key
openssl rsautl -encrypt -inkey public_key.pem -pubin -in key.bin -out ./out/key.bin.enc

# encrypt the file
openssl enc -aes-256-cbc -salt -in $1 -out "./out/$1.enc" -pass file:./key.bin
