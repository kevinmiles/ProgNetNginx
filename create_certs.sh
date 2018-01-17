#!/bin/bash
echo "Generating an SSL private key to sign your certificate..."
openssl genrsa -des3 -out greetings_key.key 1024

echo "Generating a Certificate Signing Request..."
openssl req -new -key greetings_key.key -out greetings.csr

echo "Removing passphrase from key (for nginx)..."
cp greetings_key.key greetings_key.key.org
openssl rsa -in greetings_key.key.org -out greetings_key.key
rm myssl.key.org

echo "Generating certificate..."
openssl x509 -req -days 365 -in greetings.csr -signkey greetings_key.key -out greetings_key.crt

echo "Copying certificate (greetings_key.crt) to ./nginx/"
cp greetings_key.crt ./nginx/

echo "Copying key (greetings_key.key) to ./nginx/"
cp greetings_key.key ./nginx/