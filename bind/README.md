About
=====

This bundle provides the *bind* name server that is preconfigured to act as a DNS cache and DNS sinkhole. It forwards all queries through *stunnel* to one or more DNS resolvers providing encrypted DNS over TLS (DoT) services. Additionally a *cron* job scheduler triggers a script once per week, which in turn downloads lists of hosts serving ad- and malware. Their addresses are rewritten to an invalid IP and thus ignored.

Setup
=====

`docker` and `docker-compose` have to be installed.

1. Clone this repository.
2. Optional: In file `.env`, adjust the port number on which the name server should listen. If the parameter is left empty, the well-known port for DNS (53) is used.
3. Optional: In file `stunnel.conf`, set one or more public servers that offer "DNS over TLS" as value for the `connect` parameters. By default, the resolvers of Cloudflare are set.
4. Run `./bind-update-zones .` to generate the initial list of ad- and malware-servers to deem invalid.
5. Execute `docker-compose build`.
6. Execute `docker-compose up --detach`.

Done!

Acknowledgments
===============

This software utilizes domain lists from the following projects:

- [EnergizedProtection/block](https://github.com/EnergizedProtection/block)
- [anudeepND/whitelist](https://github.com/anudeepND/whitelist)
- [crazy-max/WindowsSpyBlocker](https://github.com/crazy-max/WindowsSpyBlocker)

