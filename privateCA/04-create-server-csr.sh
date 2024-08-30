#!/bin/bash

#openssl req -new -key private/server.key -out server.csr -config server.cnf

openssl req -new -key private/server.key -out server.csr -subj "/C=MY/ST=Selangor/L=Subang Jaya/O=Demo Org/OU=IT Department/CN=nginx.demo.com"
