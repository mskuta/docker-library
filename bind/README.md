About
=====

This bundle provides the BIND name server that is configured to act as a caching server for a set of local clients here. It forwards queries through stunnel, which are transported encrypted in this way, and stores the answers in its cache. In addition, a script updates a list of ad- and malware-servers that will be ignored by BIND on a weekly basis. If the addresses of such servers remain unknown, no application can exchange data with them. All devices in the LAN are thus protected without having to deal with each one individually.

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

