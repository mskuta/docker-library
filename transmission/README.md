About
=====

In this bundle [transmission-daemon](https://github.com/transmission/transmission) and [transmission-rss](https://github.com/nning/transmission-rss) run side by side. Both programs use the very latest version from their respective repositories.

Setup
=====

`docker` and `docker-compose` have to be installed.

1. Clone this repository.
2. Adjust the parameters `DAEMON_DOWNLOAD_DIR` and `DAEMON_WATCH_DIR` in file `.env` to your environment.
3. Optional: Change the port numbers in file `.env`. `DAEMON_PEERPORT` is used for communication with peers and needs to be accessible from outside through your firewall (default: 9090). The web interface will be accessible under `DAEMON_PORT` (default: 9091).
4. Optional: Change the variables in file `config-daemon.json` according to your liking. You can find explanations of the individual settings in the [Transmission wiki](https://github.com/transmission/transmission/wiki/Editing-Configuration-Files#options). Parameters that must not be changed here have been removed as a precaution (e.g. `download-dir`).
5. Add feeds to file `config-rss.yaml`. A description of the file format can be found on the [project page of transmission-rss](https://github.com/nning/transmission-rss#configuration). Do not change the settings under the key `server`.
6. Execute `docker-compose build`.
7. Execute `docker-compose up --detach`.

Done!

If you have changed the list of feeds in file `config-rss.yaml`, it is only necessary to run `docker-compose restart rss` to apply the settings.

