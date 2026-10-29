# WebGoat container perf test image
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 dnsutils openssh-client libxml2 procps && rm -rf /var/lib/apt/lists/*
RUN pip install pillow==6.2.0 jinja2==2.10 pyyaml==5.1 requests==2.19.0
ENV APP_ID=66439
LABEL variant="777198"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
