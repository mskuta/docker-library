FROM phusion/baseimage:0.11
CMD ["/sbin/my_init"]
RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends bind9 ca-certificates stunnel4
COPY stunnel.conf /etc/stunnel/
COPY run-stunnel /etc/service/stunnel/run
COPY run-bind /etc/service/bind/run
COPY bind-update-zones /etc/cron.weekly/
COPY db.* named.conf.* zones.* /etc/bind/

