#!/bin/bash

step certificate create nginx.example.com example.com.crt example.com.key \
    --profile leaf --not-after=8760h \
    --ca ./intermediate_ca.crt --ca-key ./intermediate_ca.key --bundle
