# Scoreboard Decoder

Daktronics UDP scoreboard decoder. Listens for broadcast packets, decodes the protocol, and serves JSON over TCP and HTTP.

**Supported sports:** Baseball, Basketball, Football, Soccer, Volleyball, Hockey, Lacrosse, Wrestling, Swimming, Tennis

## Quick Start

```bash
git clone git@github.com:Shawncrew/dockerdecoder.git
cd dockerdecoder
docker compose up -d --build
```

Web GUI: **http://\<host\>:8080**

## Configuration

Open **http://\<host\>:8080/config**

| Setting | Default | Description |
|---|---|---|
| UDP Listen Port | 21301 | Port receiving scoreboard UDP broadcasts |
| TCP Output Port | 9100 | Port clients connect to for JSON data |
| Sport | auto | Auto-detects from controller identifier packet |

## JSON Output

**HTTP:** `GET http://<host>:8080/api/json`

**TCP:** Connect to port `9100` — receives latest decoded JSON per connection

## Updating

```bash
git pull && docker compose up -d --build
```