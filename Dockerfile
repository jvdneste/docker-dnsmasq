FROM alpine
RUN apk --no-cache add dnsmasq
EXPOSE 53 53/udp 67 67/udp
ENTRYPOINT ["busybox syslogd && dnsmasq"]
