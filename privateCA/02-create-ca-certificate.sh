#!/bin/bash

openssl req -x509 -new -nodes -key private/ca.key -sha256 -days 3650 -out certs/ca.crt --config rootCA.cnf
