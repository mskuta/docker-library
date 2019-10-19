About
=====

This bundle provides the *bind* name server that is preconfigured to act as a caching server for a set of local clients. It forwards queries through *stunnel* to one or more hosts providing DNS resolver services via DNS over TLS (DoT). Additionally a *cron* job scheduler runs, which triggers a script every week. This in turn downloads the latest version of a list of ad- and malware servers. Their addresses get mapped to IP 0.0.0.0 and are thus rendered invalid. All devices in the LAN that use this name server will be protected from ads and malware in this way. You no longer have to worry about each device individually.

Setup
=====

`docker` and `docker-compose` have to be installed.

1. Clone this repository.
2. Optional: In file `.env`, adjust the port number on which BIND should listen. If the parameter is left empty, the well-known port for DNS (53) is used.
3. Optional: In file `named.conf.options` adjust the value for `max-cache-size` according to your available resources. By default, BIND takes up to 10% of the host's memory.
4. Optional: In file `stunnel.conf`, set one or more public servers that offer "DNS over TLS". By default, the resolvers of Cloudflare are set.
5. Execute `docker-compose build`.
6. Execute `docker-compose up --detach`.
7. Configure this host as DNS resolver for the devices in your LAN.

Done!

Acknowledgment
==============

This software utilizes a list from the [hosts project of StevenBlack](https://github.com/StevenBlack/hosts).

