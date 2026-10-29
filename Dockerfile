# WebGoat container perf test image
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends curl perl libxml2 openssl && rm -rf /var/lib/apt/lists/*
RUN pip install flask==1.0 sqlalchemy==1.2.0 pyyaml==5.1 jinja2==2.10
ENV APP_ID=7768
LABEL variant="333028"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
