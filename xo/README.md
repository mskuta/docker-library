About
=====

These configuration files provide the means to run [Xen Orchestra](https://xen-orchestra.com/), the web interface for XenServer and XCP-ng, from the sources.

Setup
=====

`docker` and `docker-compose` have to be installed.

1. Clone this repository.
2. Optional: Adjust the variables in file `.env` to your liking. The default port for accessing the web interface is 8000.
3. Execute `docker-compose build`.
4. Execute `docker-compose up --detach`.
5. Open the application with your preferred web browser.

Done!

