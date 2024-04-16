FROM python:3.6.9-alpine

MAINTAINER https://github.com/PengBAI

RUN apk --no-cache add lftp ca-certificates openssh && \
    pip install mkdocs mkdocs-material mkdocs-bootswatch

RUN mkdir /workspace
WORKDIR /workspace

COPY mkdocs.yml ./mkdocs.yml
COPY docs ./docss

EXPOSE 8000

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
