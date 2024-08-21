# Simple HTTPS Server via Nginx (Private CA)

## Ensure SSL certifcates are generated
- Run the scripts in the [private CA](../privateCA/README.md) folder

## Setup local DNS
- Update local `hosts` file
    - linux file location `/etc/hosts`
    - windows file file location `C:\Windows\System32\drivers\etc\hosts`
    ```
    # add this line
    127.0.0.1   nginx.demo.com
    ```

## Run
- Deploy with docker compose
```
docker compose up -d
```
- Open browser or `curl` at `https://nginx.demo.com`

