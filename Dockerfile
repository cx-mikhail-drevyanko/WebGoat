# WebGoat container perf test image
FROM busybox:1.31
RUN apk add --no-cache libxml2
ENV APP_ID=63938
LABEL variant="734419"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
