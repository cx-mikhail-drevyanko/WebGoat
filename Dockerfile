# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN pip install numpy==1.16.0 lxml==4.2.0 pillow==6.2.0
ENV APP_ID=88787
LABEL variant="962282"
FROM nginx:1.24-alpine AS stage1
RUN apk add --no-cache ca-certificates sqlite bash curl expat zlib
ENV APP_ID=11879
LABEL variant="616133"
FROM postgres:14
ENV APP_ID=82099
LABEL variant="737872"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
