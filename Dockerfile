# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN apk add --no-cache jq tzdata
RUN pip install numpy==1.16.0 flask==1.0 pyyaml==5.1 cryptography==2.3
ENV APP_ID=96089
LABEL variant="374362"
FROM node:18-alpine
RUN npm install moment@2.19.0 axios@0.18.0 minimist@1.2.0
ENV APP_ID=37139
LABEL variant="418648"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
