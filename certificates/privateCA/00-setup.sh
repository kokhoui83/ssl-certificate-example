#!/bin/bash
mkdir -p {certs,crl,newcerts,private}

touch index.txt
chmod 644 index.txt

# to keep track of issued certificates
echo 1000 > serial

# to keep track of revoked certificates
echo 0100 > crlnumber

