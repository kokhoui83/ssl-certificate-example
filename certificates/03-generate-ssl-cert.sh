#!/bin/bash

openssl x509 -req -days 365 -in server.csr -signkey private.key -out server.crt
