# Generate Self-Signed Certificate via Private CA
Create a private CA to issue private SSL certificate for used in local/private network

## Setup
- Create the required files and folder for CA
```
# ensure script can be executed
chmod +x 00-setup.sh

# run script
./00-setup.sh
```

## Create root CA private key and root CA certificate
- Generate CA private key
```
# ensure script can be executed
chmod +x 01-generate-ca-privatekey.sh

# run script
./01-generate-ca-privatekey.sh
```

- Create CA certificate
```
# ensure script can be executed
chmod +x 02-create-ca-certificate.sh

# run script
./02-create-ca-certificate.sh
```

## Create file for server certificate
- Generate server private key
```
# ensure script can be executed
chmod +x 03-generate-server-privatekey.sh

# run script
./03-generate-server-privatekey.sh
```

- Create server certificate signing request file
```
# ensure script can be executed
chmod +x 04-create-server-csr.sh

# run script
./04-create-server-csr.sh
```

## Root CA signed server CSR
- Signed and generate the server certificate using the server CSR
```
# ensure script can be executed
chmod +x 05-signed-csr-with-proivate-ca.sh

# run script
./05-signed-csr-with-proivate-ca.sh
```
## Update system to trusted the CA certificate
- Each OS required the root CA cert to be installed before the server SSL can be used without problem
```
# Linux
sudo apt-get install -y ca-certificates
sudo cp local-ca.crt /usr/local/share/ca-certificates
sudo update-ca-certificates

# Windows
# Double-clicked the root CA cert file (ca.crt) and install as trusted root certificate
```

## CA can revoke server certificate
- Certificate issued can be revoke if necessary
```
# ensure script can be executed
chmod +x 06-revoke-certificate.sh

# run script
./06-revoke-certificate.sh
```