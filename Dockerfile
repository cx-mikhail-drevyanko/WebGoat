# WebGoat container perf test image
FROM nginx:1.20-alpine
RUN apk add --no-cache curl sqlite bind-tools libxml2
LABEL variant="667323"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
