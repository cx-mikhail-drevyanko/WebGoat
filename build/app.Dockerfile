# WebGoat container perf test image
FROM alpine:3.14
RUN apk add --no-cache tzdata nano
ENV APP_ID=11224
LABEL variant="30787"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
