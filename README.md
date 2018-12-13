# scripts

## Encrypt file

### Generate RSA private and public keys
./crypto/RSA/gen.sh

### Encrypt with public key
./encrypt.sh README.md
create out folder with encrypt key and file

### Decrypt with private key
files needed: private_key.pem, key.bin.enc and README.md.enc
./decrypt.sh README.md.enc