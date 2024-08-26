#!/bin/bash

step certificate create "Example Intermediate CA 1" intermediate_ca.crt intermediate_ca.key \
    --profile intermediate-ca --ca ./root_ca.crt --ca-key ./root_ca.key