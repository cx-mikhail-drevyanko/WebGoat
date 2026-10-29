# WebGoat container perf test image
FROM busybox:1.31
RUN apk add --no-cache openssh-client bind-tools busybox-extras sqlite tar libxml2 expat
ENV APP_ID=18774
LABEL variant="187263"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
