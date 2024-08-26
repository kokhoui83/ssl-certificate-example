# Create Self-Signed Certificate via Private CA (SmallStep CLI)
Create a private CA to issue private SSL certificate for used in local/private network using SmallStep CLI tool

## Prerequisite
- Install smallstep cli
  - https://smallstep.com/docs/step-cli/installation/
```
# ubuntu linux
wget https://dl.smallstep.com/cli/docs-cli-install/latest/step-cli_amd64.deb
sudo dpkg -i step-cli_amd64.deb

# windows
winget install Smallstep.step

# mac os
brew install step
```

## Create Root CA Certificates
- Create both root CA private key and root CA certificate name `Example Root CA`
```
# ensure script is executable
chmod +x ./01-create-root-ca.sh

# run script
./01-create-root-ca.sh
```

## Create Intermediate CA Certificates
- Intermediate certificate is used to signed the left certificate as a best practice instead of using the Root CA certificate
- Intermediate certificate is created using the Root CA certificate
```
# ensure script is executable
chmod +x ./02-create-intermediate-ca.sh

# run script
./01-create-intermediate-ca.sh
```

## Create Left Certificate (Server SSL Certificate)
- Server SSL certificate is issued/created using the intermediate CA
- No CSR is needed to be created
- Certificate is issued to `nginx.example.com`
```
# ensure script is executable
chmod +x ./03-issue-leaf-certificate.sh

# run script
./03-issue-leaf-certificate.sh
```

## Inspect and verify certificate
- Using the CLI tool to inspect and verify the leaf certificate
```
# verify (no output - certificate is valid)
step certificate verify example.com.crt --roots root_ca.crt

# inspect
step certificate inspect example.com.crt --short
```