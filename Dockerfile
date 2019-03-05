FROM alpine:3.8

RUN apk add --no-cache curl

COPY bugsnag.sh ./
RUN chmod +x bugsnag.sh
ENTRYPOINT ./bugsnag.sh
