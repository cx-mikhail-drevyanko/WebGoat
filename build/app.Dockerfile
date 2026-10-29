# WebGoat container perf test image
FROM alpine:3.14
RUN apk add --no-cache ca-certificates openssh-client expat bind-tools
ENV APP_ID=66401
LABEL variant="509821"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
