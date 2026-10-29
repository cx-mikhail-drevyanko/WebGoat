# WebGoat container perf test image
FROM busybox:1.31
RUN apk add --no-cache bind-tools wget
ENV APP_ID=8854
LABEL variant="214992"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
