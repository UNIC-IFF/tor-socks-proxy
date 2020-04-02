# TOR SOCKS Proxy Docker

To run a TOR SOCKS proxy server in docker, one can either build the image following the guide below OR pull the image directly from [UNIC-IFF Dockerhub](https://hub.docker.com/orgs/uniciff/repositories).

## Pulling the docker image from the Dockerhub.

```
docker pull uniciff/tor_socks_proxy
```

## Building the TOR SOCK proxy image
To build the docker image for TOR socks, run the following.

```
chmod +x ./build_containers.sh
./build_container.sh
```

## Running the TOR SOCKS proxy in a local container

```
docker run -d --rm --name tor-socks-proxy -p 9050:9050 uniciff/tor_socks_proxy
```

It will start the TOR SOCKS PROXY and it listens to new connections on port 9050.

Alternatively, one can include use it as a service in a *docker-compose.yaml* file. Just add a similar to the following service entry:

```YAML
version : "3.2"

services:
  tor_socks_proxy:
    image: uniciff/tor_socks_proxy
    container_name: tor_socks_proxy
    restart: unless-stopped
    expose:
      - "9050"
    networks:
      - local-tor-exposed-net

  other_service:
    image: alpine
    networks:
      - local-tor-exposed-net

networks:
  local-tor-exposed-net
```
## Contributors

IFF Research Team @ UNIC

* Antonios Inglezakis ( @antIggl ) - Researcher / Senior Software Engineer and Systems Administrator, University of Nicosia - Institute For the Future (UNIC-IFF)
* Klitos Christodoulou ( @klitoschr ) - Research Manager and Faculty Member, University of Nicosia - Institute For the Future (UNIC-IFF)
* Elias Iosif ( @iosife ) - Faculty Member, University of Nicosia - Institute For the Future (UNIC-IFF)

## About IFF 

[IFF](https://www.unic.ac.cy/iff/) is an interdisciplinary research centre, aimed at advancing emerging technologies, contributing to their effective application and evaluating their impact. The general mission at IFF is to educate leaders, develop knowledge and build communities to help society prepare for a future shaped by transformative technologies. The institution has been engaged with the community since 2013 offering the World’s First Massive Open Online Course (MOOC) on blockchain and cryptocurrency for free, supporting the community and bridging the educational gap on blockchains and digital currencies.

