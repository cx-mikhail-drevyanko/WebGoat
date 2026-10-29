# WebGoat container perf test image
FROM python:3.12-alpine
RUN apk add --no-cache git
RUN pip install jinja2==2.10 numpy==1.16.0 cryptography==2.3
LABEL variant="587154"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
