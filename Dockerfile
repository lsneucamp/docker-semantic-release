FROM node:9-alpine

ENV CI=true

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN npm i -g \
        semantic-release \
        @semantic-release/release-notes-generator \
        @semantic-release/changelog \
        @semantic-release/git \
        @semantic-release/exec

RUN mkdir /repo

WORKDIR /repo

ENTRYPOINT ["semantic-release"]