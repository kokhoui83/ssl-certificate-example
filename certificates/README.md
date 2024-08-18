# Generate Self-Signed Certificate

## Generate private key
- Run script
```
# ensure the script is executable
chmod +x ./01-generate-privatekey.sh

# run
./01-generate-privatekey.sh
```

## Create the Certificate Signing Request (CSR)
- Run script
```
# ensure the script is executable
chmod +x ./02-create-csr.sh

# run
./02-create-csr.sh
```
- Provide the correct information when prompted

## Generate the SSL certificates
- Run script
```
# ensure the script is executable
chmod +x ./03-generate-ssl-cert.sh

# run
./03-generate-ssl-cert.sh
```