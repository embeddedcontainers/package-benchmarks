FROM debian:bookworm-slim

RUN \
  apt-get -y update \
  && apt-get -y install --no-install-recommends \
  python3 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*