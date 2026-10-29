# WebGoat container perf test image
FROM python:3.9-alpine
RUN apk add --no-cache curl expat git vim
RUN pip install lxml==4.2.0 pillow==6.2.0 jinja2==2.10 numpy==1.16.0 flask==1.0
ENV APP_ID=53516
LABEL variant="597865"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
