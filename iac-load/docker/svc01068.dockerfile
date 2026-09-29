FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl nano gzip
RUN curl -sSL https://example.com/install.sh | bash

ADD app.tar.gz /opt/app

CMD ["/opt/app/run.sh"]
