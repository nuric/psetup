# Personal Setup

This repo contains personal rc files and setup scripts to create work environment on a clean installation. It is designed to be as little as possible such that when I work on another computer I don't hit random key combinations and nothing happens.

## Docker
There is development docker image setting up a skeleton container. It falls into a SSH server for remote connections. To build:

```bash
docker build -t nuricdev .
```

It is often a good idea to have a persisten storage for the home directory:

```bash
docker volume create home-nuric
```

then run it with:

```bash
docker run --name devtest --mount source=home-nuric,target=/home/nuric -p 2222:22 nuricdev
```
