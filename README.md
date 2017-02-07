# Cockpit Docker

[![license](https://img.shields.io/github/license/mashape/apistatus.svg?maxAge=2592000)](https://github.com/digitalmobil/mautic-build-tools)

# What is this?
[Cockpit CMS](https://github.com/COCOPi/cockpit) in a docker container.

# How to use this image

## Installation

```sh
docker pull digitalmobil/cockpit-docker
```

## Usage

1. Start the container 

```sh
docker run --rm -p "8080:80" digitalmobil/cockpit-docker 
```

2. On first run, complete installation by opening [http://localhost:8080/install](http://localhost:8080/install).  Otherwise log in via [http://localhost:8080](http://localhost:8080).


