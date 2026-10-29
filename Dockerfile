# WebGoat container perf test image
FROM redis:6.0-alpine
RUN apk add --no-cache openssl openssh-client busybox-extras
LABEL variant="516221"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
