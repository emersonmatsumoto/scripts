#!/bin/sh

# private_key.pem, key.bin.enc, file.txt.enc

# decrypt the key
openssl rsautl -decrypt -inkey private_key.pem -in key.bin.enc -out key.bin 

# decrypt the file
openssl enc -d -aes-256-cbc -in $1 -out "${1%.*}" -pass file:./key.bin