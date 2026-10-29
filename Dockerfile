# WebGoat container perf test image
FROM postgres:13-alpine
RUN apk add --no-cache expat nano curl openssh-client
ENV APP_ID=34043
LABEL variant="347474"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
