FROM debian:stable-slim
MAINTAINER Kitsu, Inc.

LABEL version="1.0.0"
LABEL repository="http://github.com/NuckChorris/cc-test-reporter-action"
LABEL homepage="http://github.com/NuckChorris/cc-test-reporter-action"
LABEL maintainer="Emma Lejeck <nuck@kitsu.io>"

LABEL com.github.actions.name="CodeClimate Test Reporter"
LABEL com.github.actions.description="Provides uploading coverage to CodeClimate"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="green"
COPY LICENSE README.md /

# Download the test reporter
RUN wget https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 -O \
  /cc-test-reporter

ENTRYPOINT ["/cc-test-reporter"]
