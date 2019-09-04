# Sturm

[![Build Status](https://travis-ci.org/belfazt/sturm.svg?branch=master)](https://travis-ci.org/belfazt/sturm) [![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/belfazt/sturm)](https://hub.docker.com/r/belfazt/sturm)

Structure to create a microservice, uses [Grape](https://github.com/ruby-grape/grape)

## Developing

### Getting Dependencies

```bash
bundle install
```

### Shipping
```bash
docker build . -t sturm:latest
export DESIRED_PORT=9292
export ENVIRONMENT=production
docker run -p "$DESIRED_PORT":9292 sturm:latest bundle exec rackup -o 0.0.0.0 -E "$ENVIRONMENT"
```

## Contributors
* Diego Camargo
