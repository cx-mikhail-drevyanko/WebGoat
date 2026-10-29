# WebGoat container perf test image
FROM node:16-alpine
RUN apk add --no-cache bash nano
ENV APP_ID=49219
LABEL variant="914979"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
