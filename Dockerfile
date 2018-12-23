FROM node:10-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh sed jq

RUN npm i -g \
        semantic-release \
        @semantic-release/release-notes-generator \
        @semantic-release/changelog \
        @semantic-release/git \
        @semantic-release/exec

RUN mkdir /repo

WORKDIR /repo

USER node

CMD ["semantic-release"]
