FROM docker.io/ubuntu:18.04

RUN apt-get update; \
    apt-get install -y \
      dumb-init \
      rsyslog; \
    apt-get clean


ADD rsyslog.conf /etc/
ADD start.sh /

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/start.sh"]


