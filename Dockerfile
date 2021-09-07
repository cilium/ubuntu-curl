# syntax=docker/dockerfile:1.2

# Copyright 2021 Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

FROM docker.io/library/ubuntu:20.04@sha256:10cbddb6cf8568f56584ccb6c866203e68ab8e621bb87038e254f6f27f955bbe

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
  curl \
  dnsutils \
  netcat \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/curl"]
