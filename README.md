# Docker image for Emacs on Alpine Linux

[![GitHub Workflow Status](https://github.com/aburlot/docker-alpine-emacs/actions/workflows/docker.yml/badge.svg)](https://github.com/aburlot/docker-alpine-emacs/actions/workflows/docker.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/lalilulelo314/alpine-emacs)](https://hub.docker.com/r/lalilulelo314/alpine-emacs/)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/lalilulelo314/alpine-emacs)](https://hub.docker.com/r/lalilulelo314/alpine-emacs/)

Emacs from the Alpine community repository, with GNU ELPA, NonGNU ELPA and MELPA configured.

* Alpine Linux v3.23
* Emacs version as packaged by Alpine v3.23

## How to use this image

```console
$ docker run -it lalilulelo314/alpine-emacs
```

## Environment Variables

### `EMACS_PACKAGES`

This variable specifies space separated list of packages.
They are installed automatically when the container is executed.

```console
$ docker run -it -e EMACS_PACKAGES="magit evil" lalilulelo314/alpine-emacs
```
