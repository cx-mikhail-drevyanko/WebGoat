# WebGoat container perf test image
FROM python:3.9-slim
RUN pip install flask==1.0 jinja2==2.10 pillow==6.2.0 lxml==4.2.0
ENV APP_ID=32788
LABEL variant="623361"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
