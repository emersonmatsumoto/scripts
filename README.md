## Encrypt file

### Generate RSA private and public keys
./crypto/RSA/gen.sh

Send decrypt.sh and public_key.pem

### Encrypt with public key
./encrypt.sh README.md

Create out folder with encrypt key and file

### Decrypt with private key
Files needed: private_key.pem, key.bin.enc and README.md.enc

./decrypt.sh README.md.enc
