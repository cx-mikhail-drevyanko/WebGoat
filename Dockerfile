# WebGoat container perf test image
FROM python:3.9-alpine AS stage0
RUN apk add --no-cache libxml2 expat git ca-certificates openssl sqlite tzdata bash
RUN pip install pillow==6.2.0 sqlalchemy==1.2.0 lxml==4.2.0
ENV APP_ID=65258
LABEL variant="469512"
FROM ruby:3.0-alpine
RUN apk add --no-cache bash
ENV APP_ID=43850
LABEL variant="719311"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
