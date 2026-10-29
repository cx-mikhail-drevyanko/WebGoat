# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN apk add --no-cache ca-certificates libxml2 curl nano
RUN pip install pyyaml==5.1
LABEL variant="522055"
FROM httpd:2.4.58-alpine
RUN apk add --no-cache libxml2 nano bind-tools zlib
LABEL variant="808287"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
