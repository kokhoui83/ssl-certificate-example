Simple HTTPS Server via Nginx (Private CA with SmallStep CLI)

## Ensure SSL certificate are generated
- Run scripts in the [smallstep-cli](../smallstep-cli/README.md) folder
- Unsure the same password is used as in [keys/global.pass](./keys/global.pass)

## Setup local DNS
- Update local `hosts` file
    - linux file location `/etc/hosts`
    - windows file file location `C:\Windows\System32\drivers\etc\hosts`
    ```
    # add this line
    127.0.0.1   nginx.example.com
    ```

## Run
- Deploy with docker compose
```
docker compose up -d
```
- Open browser or `curl` at `https://nginx.demo.com`