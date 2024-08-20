#!/bin/bash

openssl ca -config openssl.cnf -in server.csr -out certs/server.crt -days 365 -batch
