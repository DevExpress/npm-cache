FROM alpine:3.6

RUN apk --no-cache add ca-certificates wget docker
ADD cmd.sh /
RUN chmod +x /cmd.sh

STOPSIGNAL KILL
