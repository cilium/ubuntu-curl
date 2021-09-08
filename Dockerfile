# syntax=docker/dockerfile:1.2

# Copyright 2021 Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

FROM docker.io/library/ubuntu:20.04@sha256:9d6a8699fb5c9c39cf08a0871bd6219f0400981c570894cd8cbea30d3424a31f

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
  curl \
  dnsutils \
  iputils-ping \
  netcat \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/curl"]
