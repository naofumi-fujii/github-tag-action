FROM alpine
LABEL "repository"="https://github.com/naofumi-fujii/github-tag-action"
LABEL "homepage"="https://github.com/naofumi-fujii/github-tag-action"
LABEL "maintainer"="Naofumi Fujii"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && apk add --update nodejs npm && npm install -g semver

ENTRYPOINT ["/entrypoint.sh"]
