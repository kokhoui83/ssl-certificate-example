#!/bin/bash

openssl ca -config openssl.cnf -revoke certs/server.crt

openssl ca -config openssl.cnf -gencrl -out crl/ca.crl
