FROM alpine:latest
RUN apk --no-cache add dnsmasq
RUN printf "#!/bin/ash\nbusybox syslogd && dnsmasq\n" > /run.sh
RUN chmod a+x /run.sh
EXPOSE 53 53/udp 67 67/udp
ENTRYPOINT ["/run.sh"]
