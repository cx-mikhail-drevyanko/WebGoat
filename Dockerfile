# WebGoat container perf test image
FROM nginx:1.24-alpine
RUN apk add --no-cache bind-tools git gzip openssh-client bash
LABEL variant="71548"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
