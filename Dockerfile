# WebGoat container perf test image
FROM python:3.9-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 zlib1g libcurl4 libssl-dev net-tools vim && rm -rf /var/lib/apt/lists/*
RUN pip install lxml==4.2.0
ENV APP_ID=64320
LABEL variant="226186"
FROM redis:6.0-alpine
RUN apk add --no-cache vim openssh-client openssl busybox-extras expat nano sqlite
LABEL variant="50324"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
