# WebGoat container perf test image
FROM python:3.12-alpine
RUN apk add --no-cache libcurl nano openssh-client libxml2 bash vim jq
RUN pip install flask==1.0 cryptography==2.3
ENV APP_ID=16210
LABEL variant="720314"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
