#!/bin/bash

#openssl req -x509 -new -nodes -key private/ca.key -sha256 -days 3650 -out certs/ca.crt -config rootCA.cnf

openssl req -config openssl.cnf -key private/ca.key -new -x509 -days 7300 -sha256 -extensions v3_ca -out certs/ca.crt -subj "/C=MY/ST=Kuala Lumpur/L=Kuala Lumpur/O=RootCA/OU=IT Department/CN=RootCA"
