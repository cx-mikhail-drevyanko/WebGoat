# WebGoat container perf test image
FROM alpine:3.22
RUN apk add --no-cache bash libxml2 tzdata tar expat openssh-client
ENV APP_ID=23082
LABEL variant="414229"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
