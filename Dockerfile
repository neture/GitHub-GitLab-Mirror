FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add --no-cache git curl jq

COPY entrypoint.sh /entrypoint.sh
COPY cred-helper.sh /cred-helper.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
RUN ["chmod", "+x", "/cred-helper.sh"]

ENTRYPOINT ["/entrypoint.sh"]
