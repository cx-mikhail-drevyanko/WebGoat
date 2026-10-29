# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN apk add --no-cache nano openssh-client
RUN pip install django==2.2.0 urllib3==1.24 pyyaml==5.1 jinja2==2.10
LABEL variant="204059"
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends net-tools libcurl4 dnsutils ca-certificates && rm -rf /var/lib/apt/lists/*
RUN pip install pillow==6.2.0 pyyaml==5.1 lxml==4.2.0
ENV APP_ID=86523
LABEL variant="845442"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
