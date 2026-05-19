# BrixLink

Scoreboard controller decoder by **Statbrix**.

Listens for UDP broadcasts from Daktronics or Nevco scoreboard controllers,
decodes the protocol, and serves structured JSON via HTTP and TCP.

## Quick Start (Linux)

```bash
git clone https://github.com/Statbrix/BrixLink.git
cd BrixLink
docker compose up -d
```

Web GUI: **http://&lt;host&gt;:8080**

## Update

```bash
docker compose pull && docker compose up -d
```

## Windows / Mac Docker Desktop

`network_mode: host` is not supported on Windows or Mac Docker Desktop.
Edit `docker-compose.yml` — comment out `network_mode: host` and add a
ports section:

```yaml
    # network_mode: host
    ports:
      - "8080:8080"
      - "9100:9100"
      - "21300:21300/udp"
      - "21301:21301/udp"
```

Note: UDP broadcasts cannot pass through Docker port mapping. For full
broadcast reception, deploy on Linux.

## What is BrixLink?

| | |
|---|---|
| Web GUI | `http://<host>:8080` — configure UDP/TCP ports, sport, controller |
| TCP JSON output | `<host>:9100` — connect to receive latest decoded JSON |
| HTTP API | `http://<host>:8080/api/json` — same data over HTTP |
| Image | `ghcr.io/statbrix/brixlink:latest` |