# WebGoat container perf test image
FROM postgres:13-alpine
RUN apk add --no-cache openssl tzdata openssh-client gzip vim
ENV APP_ID=94879
LABEL variant="936870"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
