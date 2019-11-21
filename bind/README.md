About
=====

This bundle provides the *bind* name server that is preconfigured to act as a caching server for a set of local clients. It forwards queries through *stunnel* to one or more hosts providing DNS resolver services via DNS over TLS (DoT). Wrapping Domain Name System (DNS) queries and answers via the Transport Layer Security (TLS) protocol increases user privacy and security. Additionally a *cron* job scheduler runs, which triggers a script every week. This in turn downloads the latest version of a list of ad- and malware-servers. Their addresses get mapped to IP 0.0.0.0 and are thus rendered invalid. All devices in the LAN using this name server will be protected from ads and malware in this way. You no longer have to worry about each device individually.

Setup
=====

`docker` and `docker-compose` have to be installed.

1. Clone this repository.
2. Optional: In file `.env`, adjust the port number on which the name server should listen. If the parameter is left empty, the well-known port for DNS (53) is used.
3. Optional: In file `named.conf.options` adjust the value for `max-cache-size` according to your available resources. By default, the name server takes up to 10% of the host's memory.
4. Optional: In file `stunnel.conf`, set one or more public servers that offer "DNS over TLS" as value for the `connect` parameters. By default, the resolvers of Cloudflare are set.
5. Run `./bind-update-zones .` to generate the initial list of ad- and malware-servers to deem invalid.
5. Execute `docker-compose build`.
6. Execute `docker-compose up --detach`.
7. Configure this host as DNS resolver for the devices in your LAN.

Done!

Acknowledgments
===============

This software utilizes domain lists from the following projects:

- [StevenBlack/hosts](https://github.com/StevenBlack/hosts)
- [anudeepND/whitelist](https://github.com/anudeepND/whitelist)

