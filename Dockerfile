# WebGoat container perf test image
FROM traefik:v2.10 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="60987"
FROM python:3.8-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends curl jq perl git ca-certificates vim && rm -rf /var/lib/apt/lists/*
RUN pip install pyyaml==5.1 lxml==4.2.0 pillow==6.2.0
ENV APP_ID=94796
LABEL variant="331017"
FROM alpine:3.12
ENV APP_ID=92917
LABEL variant="432171"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
