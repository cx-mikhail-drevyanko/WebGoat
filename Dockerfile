# WebGoat container perf test image
FROM nginx:1.20-alpine AS stage0
RUN apk add --no-cache vim bash ca-certificates git libxml2 openssh-client
ENV APP_ID=29984
LABEL variant="254870"
FROM alpine:3.14
RUN apk add --no-cache git ca-certificates bash openssh-client jq wget expat vim
ENV APP_ID=51382
LABEL variant="377517"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
