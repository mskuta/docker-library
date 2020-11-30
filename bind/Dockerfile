FROM phusion/baseimage:bionic-1.0.0
CMD ["/sbin/my_init"]
RUN DEBIAN_FRONTEND=noninteractive install_clean bind9 ca-certificates stunnel4
COPY stunnel.conf /etc/stunnel/
COPY run-stunnel /etc/service/stunnel/run
COPY run-bind /etc/service/bind/run
COPY bind-update-zones /usr/local/bin/
COPY bind-update-zones.cron.d /etc/cron.d/bind-update-zones
COPY db.* named.conf.* zones.* /etc/bind/

