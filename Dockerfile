# WebGoat container perf test image
FROM node:20-alpine
RUN npm install moment@2.19.0 handlebars@4.0.5
ENV APP_ID=31535
LABEL variant="614121"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
