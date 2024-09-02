# Simple API Server using FastApi

## Prerequisite
- Python 3.12.x

## Setup
- Activate virtualenv
```
# virtualenv
source .venv/bin/activate

# pipenv
pipenv shell
```
- Install dependencies
```
# pip
pip install -r requirements.txt

# pipenv
pipenv install
```

## Build/Run
- Run server locally
```
uvicorn main:app --host 0.0.0.0 --port 8000
```
- Build container (optional)
```
docker build -t fastapp-app .
```
- Run compose
```
docker compose up -d
```
